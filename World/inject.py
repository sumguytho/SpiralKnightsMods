#!/usr/bin/env python3

import argparse
import struct

# injects a CONSTANT_Class_info entry into const pool of WorldClass.class
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--input")
    parser.add_argument("--output")

    args = parser.parse_args()

    with open(args.input, "rb") as f:
        class_file_contents = f.read()

    const_pool_start = 0xa
    const_pool_end = 0xcc

    content_prologue = class_file_contents[:const_pool_start-2]
    content_epilogue = class_file_contents[const_pool_end:]
    const_pool = class_file_contents[const_pool_start:const_pool_end]
    const_pool_size = struct.unpack(">H", class_file_contents[const_pool_start-2:const_pool_start])[0]

    class_name = "com/threerings/crowd/chat/client/a$c".encode()
    name_entry = struct.pack(">BH", 1, len(class_name))
    name_entry += class_name
    # const pool indices start from 1 hence we don't need to add 1
    class_entry = struct.pack(">BH", 7, const_pool_size)
    const_pool += name_entry
    const_pool += class_entry
    const_pool_size += 2
    const_pool_size_bytes = struct.pack(">H", const_pool_size)
    const_pool = const_pool_size_bytes + const_pool
    # apparently, javac doesn't give a shit about class entries present
    # in imported class
    output = content_prologue + const_pool + content_epilogue
    
    with open(args.output, "wb") as f:
        f.write(output)

if __name__ == "__main__":
    main()
