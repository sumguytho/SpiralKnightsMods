.version 49 0 
.class public super com/threerings/tudey/data/actor/Actor 
.super com/threerings/util/g 
.implements com/threerings/delta/f 
.implements com/threerings/io/Streamable 
.field protected _config Lcom/threerings/config/ConfigReference; .fieldattributes 
    .runtime visible annotations 
        .annotation Lcom/threerings/util/h; 
        .end annotation 
    .end runtime 
    .signature Lcom/threerings/config/ConfigReference<Lcom/threerings/tudey/config/ActorConfig;>; 
.end fieldattributes 
.field protected _id I .fieldattributes 
    .runtime visible annotations 
        .annotation Lcom/threerings/util/h; 
        .end annotation 
        .annotation Lcom/threerings/delta/e; 
        .end annotation 
    .end runtime 
.end fieldattributes 
.field protected _created I .fieldattributes 
    .runtime visible annotations 
        .annotation Lcom/threerings/util/h; 
        .end annotation 
        .annotation Lcom/threerings/delta/e; 
        .end annotation 
    .end runtime 
.end fieldattributes 
.field protected _destroyed I .fieldattributes 
    .runtime visible annotations 
        .annotation Lcom/threerings/util/h; 
        .end annotation 
    .end runtime 
.end fieldattributes 
.field protected _translation Lcom/threerings/math/Vector2f; .fieldattributes 
    .runtime visible annotations 
        .annotation Lcom/threerings/util/h; 
        .end annotation 
    .end runtime 
.end fieldattributes 
.field protected _rotation F .fieldattributes 
    .runtime visible annotations 
        .annotation Lcom/threerings/util/h; 
        .end annotation 
    .end runtime 
.end fieldattributes 
.field protected _flags I .fieldattributes 
    .runtime visible annotations 
        .annotation Lcom/threerings/util/h; 
        .end annotation 
    .end runtime 
.end fieldattributes 
.field protected transient bbC Lcom/threerings/tudey/config/ActorConfig$Original; .fieldattributes 
    .runtime visible annotations 
        .annotation Lcom/threerings/util/h; 
        .end annotation 
    .end runtime 
.end fieldattributes 
.field private static bbD Lcom/threerings/tudey/config/ActorConfig$Original; 

.method public <init> : (Lcom/threerings/config/ConfigReference;IILcom/threerings/math/Vector2f;F)V 
    .code stack 3 locals 6 
L0:     aload_0 
L1:     invokespecial Method com/threerings/util/g <init> ()V 
L4:     aload_0 
L5:     ldc 2147483647 
L7:     putfield Field com/threerings/tudey/data/actor/Actor _destroyed I 
L10:    aload_0 
L11:    new com/threerings/math/Vector2f 
L14:    dup 
L15:    invokespecial Method com/threerings/math/Vector2f <init> ()V 
L18:    putfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f; 
L21:    aload_0 
L22:    aload_1 
L23:    putfield Field com/threerings/tudey/data/actor/Actor _config Lcom/threerings/config/ConfigReference; 
L26:    aload_0 
L27:    iload_2 
L28:    putfield Field com/threerings/tudey/data/actor/Actor _id I 
L31:    aload_0 
L32:    iload_3 
L33:    putfield Field com/threerings/tudey/data/actor/Actor _created I 
L36:    aload_0 
L37:    getfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f; 
L40:    aload 4 
L42:    invokevirtual Method com/threerings/math/Vector2f n (Lcom/threerings/math/Vector2f;)Lcom/threerings/math/Vector2f; 
L45:    pop 
L46:    aload_0 
L47:    fload 5 
L49:    putfield Field com/threerings/tudey/data/actor/Actor _rotation F 
L52:    return 
L53:    
        .linenumbertable 
            L0 64 
            L4 433 
            L10 437 
            L21 453 
            L26 66 
            L31 67 
            L36 68 
            L46 69 
            L52 70 
        .end linenumbertable 
    .end code 
    .signature (Lcom/threerings/config/ConfigReference<Lcom/threerings/tudey/config/ActorConfig;>;IILcom/threerings/math/Vector2f;F)V 
.end method 

.method public <init> : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     invokespecial Method com/threerings/util/g <init> ()V 
L4:     aload_0 
L5:     ldc 2147483647 
L7:     putfield Field com/threerings/tudey/data/actor/Actor _destroyed I 
L10:    aload_0 
L11:    new com/threerings/math/Vector2f 
L14:    dup 
L15:    invokespecial Method com/threerings/math/Vector2f <init> ()V 
L18:    putfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f; 
L21:    aload_0 
L22:    iconst_0 
L23:    putfield Field com/threerings/tudey/data/actor/Actor _id I 
L26:    aload_0 
L27:    iconst_0 
L28:    putfield Field com/threerings/tudey/data/actor/Actor _created I 
L31:    return 
L32:    
        .linenumbertable 
            L0 76 
            L4 433 
            L10 437 
            L21 453 
            L26 79 
            L31 80 
        .end linenumbertable 
    .end code 
.end method 

.method public init : (Lcom/threerings/config/ConfigManager;)V 
    .code stack 3 locals 3 
L0:     aload_1 
L1:     ldc Class com/threerings/tudey/config/ActorConfig 
L3:     aload_0 
L4:     getfield Field com/threerings/tudey/data/actor/Actor _config Lcom/threerings/config/ConfigReference; 
L7:     invokevirtual Method com/threerings/config/ConfigManager a (Ljava/lang/Class;Lcom/threerings/config/ConfigReference;)Lcom/threerings/config/ManagedConfig; 
L10:    checkcast com/threerings/tudey/config/ActorConfig 
L13:    astore_2 
L14:    aload_0 
L15:    aload_2 
L16:    ifnonnull L23 
L19:    aconst_null 
L20:    goto L28 

        .stack full 
            locals Object com/threerings/tudey/data/actor/Actor Object com/threerings/config/ConfigManager Object com/threerings/tudey/config/ActorConfig 
            stack Object com/threerings/tudey/data/actor/Actor 
        .end stack 
L23:    aload_2 
L24:    aload_1 
L25:    invokevirtual Method com/threerings/tudey/config/ActorConfig ak (Lcom/threerings/config/ConfigManager;)Lcom/threerings/tudey/config/ActorConfig$Original; 

        .stack full 
            locals Object com/threerings/tudey/data/actor/Actor Object com/threerings/config/ConfigManager Object com/threerings/tudey/config/ActorConfig 
            stack Object com/threerings/tudey/data/actor/Actor Object com/threerings/tudey/config/ActorConfig$Original 
        .end stack 
L28:    putfield Field com/threerings/tudey/data/actor/Actor bbC Lcom/threerings/tudey/config/ActorConfig$Original; 
L31:    aload_0 
L32:    aload_0 
L33:    getfield Field com/threerings/tudey/data/actor/Actor bbC Lcom/threerings/tudey/config/ActorConfig$Original; 
L36:    ifnonnull L45 
L39:    getstatic Field com/threerings/tudey/data/actor/Actor bbD Lcom/threerings/tudey/config/ActorConfig$Original; 
L42:    goto L49 

        .stack stack_1 Object com/threerings/tudey/data/actor/Actor 
L45:    aload_0 
L46:    getfield Field com/threerings/tudey/data/actor/Actor bbC Lcom/threerings/tudey/config/ActorConfig$Original; 

        .stack full 
            locals Object com/threerings/tudey/data/actor/Actor Object com/threerings/config/ConfigManager Object com/threerings/tudey/config/ActorConfig 
            stack Object com/threerings/tudey/data/actor/Actor Object com/threerings/tudey/config/ActorConfig$Original 
        .end stack 
L49:    putfield Field com/threerings/tudey/data/actor/Actor bbC Lcom/threerings/tudey/config/ActorConfig$Original; 
L52:    return 
L53:    
        .linenumbertable 
            L0 88 
            L14 89 
            L31 90 
            L52 91 
        .end linenumbertable 
    .end code 
.end method 

.method public a : (Lcom/threerings/config/ConfigManager;Lcom/threerings/opengl/util/PreloadableSet;)V 
    .code stack 3 locals 3 
L0:     aload_2 
L1:     ldc Class com/threerings/tudey/config/ActorConfig 
L3:     aload_0 
L4:     getfield Field com/threerings/tudey/data/actor/Actor _config Lcom/threerings/config/ConfigReference; 
L7:     invokevirtual Method com/threerings/opengl/util/PreloadableSet addConfig (Ljava/lang/Class;Lcom/threerings/config/ConfigReference;)Z 
L10:    ifeq L22 
L13:    aload_0 
L14:    getfield Field com/threerings/tudey/data/actor/Actor bbC Lcom/threerings/tudey/config/ActorConfig$Original; 
L17:    aload_1 
L18:    aload_2 
L19:    invokevirtual Method com/threerings/tudey/config/ActorConfig$Original a (Lcom/threerings/config/ConfigManager;Lcom/threerings/opengl/util/PreloadableSet;)V 

        .stack same 
L22:    return 
L23:    
        .linenumbertable 
            L0 98 
            L13 99 
            L22 101 
        .end linenumbertable 
    .end code 
.end method 

.method public final setConfig : (Lcom/threerings/config/ConfigReference;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/threerings/tudey/data/actor/Actor _config Lcom/threerings/config/ConfigReference; 
L5:     return 
L6:     
        .linenumbertable 
            L0 108 
            L5 109 
        .end linenumbertable 
    .end code 
    .signature (Lcom/threerings/config/ConfigReference<Lcom/threerings/tudey/config/ActorConfig;>;)V 
.end method 

.method public final ES : ()Lcom/threerings/config/ConfigReference; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/tudey/data/actor/Actor _config Lcom/threerings/config/ConfigReference; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 117 
        .end linenumbertable 
    .end code 
    .signature ()Lcom/threerings/config/ConfigReference<Lcom/threerings/tudey/config/ActorConfig;>; 
.end method 

.method public final Pu : ()Lcom/threerings/tudey/config/ActorConfig$Original; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/tudey/data/actor/Actor bbC Lcom/threerings/tudey/config/ActorConfig$Original; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 125 
        .end linenumbertable 
    .end code 
.end method 

.method public final getId : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/tudey/data/actor/Actor _id I 
L4:     ireturn 
L5:     
        .linenumbertable 
            L0 133 
        .end linenumbertable 
    .end code 
.end method 

.method public final Pv : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/tudey/data/actor/Actor _created I 
L4:     ireturn 
L5:     
        .linenumbertable 
            L0 141 
        .end linenumbertable 
    .end code 
.end method 

.method public final em : (I)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/threerings/tudey/data/actor/Actor _destroyed I 
L5:     return 
L6:     
        .linenumbertable 
            L0 149 
            L5 150 
        .end linenumbertable 
    .end code 
.end method 

.method public final Pw : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/tudey/data/actor/Actor _destroyed I 
L4:     ireturn 
L5:     
        .linenumbertable 
            L0 159 
        .end linenumbertable 
    .end code 
.end method 

.method public final mH : ()Lcom/threerings/math/Vector2f; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 176 
        .end linenumbertable 
    .end code 
.end method 

.method public final O : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/threerings/tudey/data/actor/Actor _rotation F 
L5:     return 
L6:     
        .linenumbertable 
            L0 184 
            L5 185 
        .end linenumbertable 
    .end code 
.end method 

.method public final mI : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/tudey/data/actor/Actor _rotation F 
L4:     freturn 
L5:     
        .linenumbertable 
            L0 193 
        .end linenumbertable 
    .end code 
.end method 

.method public final set : (I)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     dup 
L2:     getfield Field com/threerings/tudey/data/actor/Actor _flags I 
L5:     iload_1 
L6:     ior 
L7:     putfield Field com/threerings/tudey/data/actor/Actor _flags I 
L10:    return 
L11:    
        .linenumbertable 
            L0 227 
            L10 228 
        .end linenumbertable 
    .end code 
.end method 

.method public final clear : (I)V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     dup 
L2:     getfield Field com/threerings/tudey/data/actor/Actor _flags I 
L5:     iload_1 
L6:     iconst_m1 
L7:     ixor 
L8:     iand 
L9:     putfield Field com/threerings/tudey/data/actor/Actor _flags I 
L12:    return 
L13:    
        .linenumbertable 
            L0 236 
            L12 237 
        .end linenumbertable 
    .end code 
.end method 

.method public final isSet : (I)Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/tudey/data/actor/Actor _flags I 
L4:     iload_1 
L5:     iand 
L6:     ifeq L11 
L9:     iconst_1 
L10:    ireturn 

        .stack same 
L11:    iconst_0 

        .stack stack_1 Integer 
L12:    ireturn 
L13:    
        .linenumbertable 
            L0 245 
        .end linenumbertable 
    .end code 
.end method 

.method public a : (Lcom/threerings/tudey/data/actor/Actor;IIILcom/threerings/tudey/data/actor/Actor;)Lcom/threerings/tudey/data/actor/Actor; 
    .code stack 5 locals 6 
L0:     aload_0 
L1:     aload 5 
L3:     invokevirtual Method com/threerings/tudey/data/actor/Actor copy (Ljava/lang/Object;)Ljava/lang/Object; 
L6:     pop 
L7:     aload_1 
L8:     iconst_1 
L9:     invokevirtual Method com/threerings/tudey/data/actor/Actor isSet (I)Z 
L12:    ifne L71 
L15:    iload 4 
L17:    iload_2 
L18:    isub 
L19:    i2f 
L20:    iload_3 
L21:    iload_2 
L22:    isub 
L23:    i2f 
L24:    fdiv 
L25:    fstore_2 
L26:    aload_0 
L27:    getfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f; 
L30:    aload_1 
L31:    dup 
L32:    astore_3 
L33:    getfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f; 
L36:    fload_2 
L37:    aload 5 
L39:    dup 
L40:    astore_3 
L41:    getfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f; 
L44:    invokevirtual Method com/threerings/math/Vector2f c (Lcom/threerings/math/Vector2f;FLcom/threerings/math/Vector2f;)Lcom/threerings/math/Vector2f; 
L47:    pop 
L48:    aload 5 
L50:    aload_0 
L51:    getfield Field com/threerings/tudey/data/actor/Actor _rotation F 
L54:    aload_1 
L55:    dup 
L56:    astore_3 
L57:    getfield Field com/threerings/tudey/data/actor/Actor _rotation F 
L60:    fload_2 
L61:    invokestatic Method com/threerings/export/b$g b (FFF)F 
L64:    fstore_1 
L65:    dup 
L66:    astore_3 
L67:    fload_1 
L68:    putfield Field com/threerings/tudey/data/actor/Actor _rotation F 

        .stack same_extended 
L71:    aload 5 
L73:    areturn 
L74:    
        .linenumbertable 
            L0 259 
            L7 262 
            L15 263 
            L26 264 
            L48 265 
            L71 267 
        .end linenumbertable 
    .end code 
.end method 

.method public a : (FILcom/threerings/tudey/data/actor/Actor;)Lcom/threerings/tudey/data/actor/Actor; 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     aload_3 
L2:     invokevirtual Method com/threerings/tudey/data/actor/Actor copy (Ljava/lang/Object;)Ljava/lang/Object; 
L5:     checkcast com/threerings/tudey/data/actor/Actor 
L8:     areturn 
L9:     
        .linenumbertable 
            L0 276 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Lcom/threerings/tudey/util/m;Lcom/threerings/tudey/a/k;I)Lcom/threerings/tudey/util/b; 
    .code stack 3 locals 4 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     invokevirtual Method com/threerings/tudey/data/actor/Actor d (Lcom/threerings/tudey/util/m;Lcom/threerings/tudey/a/k;)Z 
L6:     ifeq L16 
L9:     aload_0 
L10:    aload_2 
L11:    iload_3 
L12:    invokevirtual Method com/threerings/tudey/data/actor/Actor a (Lcom/threerings/tudey/util/b$a;I)Lcom/threerings/tudey/util/b; 
L15:    areturn 

        .stack same 
L16:    aconst_null 

        .stack stack_1 Object com/threerings/tudey/util/b 
L17:    areturn 
L18:    
        .linenumbertable 
            L0 286 
        .end linenumbertable 
    .end code 
.end method 

.method public d : (Lcom/threerings/tudey/util/m;Lcom/threerings/tudey/a/k;)Z 
    .code stack 1 locals 3 
L0:     aload_0 
L1:     getfield Field com/threerings/tudey/data/actor/Actor _id I 
L4:     ifge L9 
L7:     iconst_1 
L8:     ireturn 

        .stack same 
L9:     iconst_0 

        .stack stack_1 Integer 
L10:    ireturn 
L11:    
        .linenumbertable 
            L0 294 
        .end linenumbertable 
    .end code 
.end method 

.method public a : (Lcom/threerings/tudey/util/b$a;I)Lcom/threerings/tudey/util/b; 
    .code stack 5 locals 3 
L0:     new com/threerings/tudey/util/b 
L3:     dup 
L4:     aload_1 
L5:     aload_0 
L6:     iload_2 
L7:     invokespecial Method com/threerings/tudey/util/b <init> (Lcom/threerings/tudey/util/b$a;Lcom/threerings/tudey/data/actor/Actor;I)V 
L10:    areturn 
L11:    
        .linenumbertable 
            L0 302 
        .end linenumbertable 
    .end code 
.end method 

.method public e : (Lcom/threerings/tudey/data/actor/Actor;)Z 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field com/threerings/tudey/data/actor/Actor _id I 
L4:     aload_1 
L5:     dup 
L6:     astore_2 
L7:     getfield Field com/threerings/tudey/data/actor/Actor _id I 
L10:    if_icmpeq L26 
L13:    aload_0 
L14:    aload_1 
L15:    invokevirtual Method com/threerings/tudey/data/actor/Actor Cv ()I 
L18:    invokevirtual Method com/threerings/tudey/data/actor/Actor en (I)Z 
L21:    ifeq L26 
L24:    iconst_1 
L25:    ireturn 

        .stack same 
L26:    iconst_0 

        .stack stack_1 Integer 
L27:    ireturn 
L28:    
        .linenumbertable 
            L0 310 
        .end linenumbertable 
    .end code 
.end method 

.method public final en : (I)Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/tudey/data/actor/Actor Cw ()I 
L4:     iload_1 
L5:     iand 
L6:     ifeq L11 
L9:     iconst_1 
L10:    ireturn 

        .stack same 
L11:    iconst_0 

        .stack stack_1 Integer 
L12:    ireturn 
L13:    
        .linenumbertable 
            L0 319 
        .end linenumbertable 
    .end code 
.end method 

.method public Cv : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/tudey/data/actor/Actor bbC Lcom/threerings/tudey/config/ActorConfig$Original; 
L4:     getfield Field com/threerings/tudey/config/ActorConfig$Original collisionFlags I 
L7:     ireturn 
L8:     
        .linenumbertable 
            L0 327 
        .end linenumbertable 
    .end code 
.end method 

.method public Cw : ()I 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     iconst_1 
L2:     invokevirtual Method com/threerings/tudey/data/actor/Actor isSet (I)Z 
L5:     ifeq L16 
L8:     aload_0 
L9:     getfield Field com/threerings/tudey/data/actor/Actor bbC [u157] 
L12:    getfield Field com/threerings/tudey/config/ActorConfig$Original spawnAdjustMask I 
L15:    ireturn 

        .stack same 
L16:    aload_0 
L17:    getfield Field com/threerings/tudey/data/actor/Actor bbC [u157] 
L20:    getfield Field com/threerings/tudey/config/ActorConfig$Original collisionMask I 

        .stack stack_1 Integer 
L23:    ireturn 
L24:    
        .linenumbertable 
            L0 335 
        .end linenumbertable 
    .end code 
.end method 

.method public Cx : ()Z 
    .code stack 1 locals 1 
L0:     iconst_0 
L1:     ireturn 
L2:     
        .linenumbertable 
            L0 343 
        .end linenumbertable 
    .end code 
.end method 

.method public final setDirty : (Z)V 
    .code stack 0 locals 2 
L0:     return 
L1:     
        .linenumbertable 
            L0 351 
        .end linenumbertable 
    .end code 
.end method 

.method public copy : (Ljava/lang/Object;)Ljava/lang/Object; 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     invokespecial Method com/threerings/util/g copy (Ljava/lang/Object;)Ljava/lang/Object; 
L5:     checkcast com/threerings/tudey/data/actor/Actor 
L8:     dup 
L9:     astore_1 
L10:    aload_0 
L11:    getfield Field com/threerings/tudey/data/actor/Actor _config Lcom/threerings/config/ConfigReference; 
L14:    invokevirtual Method com/threerings/config/ConfigReference gV ()Lcom/threerings/config/ConfigReference; 
L17:    putfield Field com/threerings/tudey/data/actor/Actor _config Lcom/threerings/config/ConfigReference; 
L20:    aload_1 
L21:    aload_0 
L22:    getfield Field com/threerings/tudey/data/actor/Actor _id I 
L25:    putfield Field com/threerings/tudey/data/actor/Actor _id I 
L28:    aload_1 
L29:    aload_0 
L30:    getfield Field com/threerings/tudey/data/actor/Actor _created I 
L33:    putfield Field com/threerings/tudey/data/actor/Actor _created I 
L36:    aload_1 
L37:    aload_0 
L38:    getfield Field com/threerings/tudey/data/actor/Actor _destroyed I 
L41:    putfield Field com/threerings/tudey/data/actor/Actor _destroyed I 
L44:    aload_1 
L45:    getfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f; 
L48:    aload_0 
L49:    getfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f; 
L52:    invokevirtual Method com/threerings/math/Vector2f n (Lcom/threerings/math/Vector2f;)Lcom/threerings/math/Vector2f; 
L55:    pop 
L56:    aload_1 
L57:    aload_0 
L58:    getfield Field com/threerings/tudey/data/actor/Actor _rotation F 
L61:    putfield Field com/threerings/tudey/data/actor/Actor _rotation F 
L64:    aload_1 
L65:    aload_0 
L66:    getfield Field com/threerings/tudey/data/actor/Actor _flags I 
L69:    putfield Field com/threerings/tudey/data/actor/Actor _flags I 
L72:    aload_1 
L73:    aload_0 
L74:    getfield Field com/threerings/tudey/data/actor/Actor bbC [u157] 
L77:    putfield Field com/threerings/tudey/data/actor/Actor bbC [u157] 

        invokestatic Method sumguytho/flight/Flight get__Callback ()Lsumguytho/flight/Flight;
        aload_1
        checkcast com/threerings/tudey/data/actor/Actor
        getfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f;
        aload_1
        checkcast com/threerings/tudey/data/actor/Actor
        getfield Field com/threerings/tudey/data/actor/Actor _id I
        invokevirtual Method sumguytho/flight/Flight modifyActor__Callback (Lcom/threerings/math/Vector2f;I)V

L80:    aload_1 
L81:    areturn 
L82:    
        .linenumbertable 
            L0 367 
            L9 368 
            L20 369 
            L28 370 
            L36 371 
            L44 372 
            L56 373 
            L64 374 
            L72 375 
            L80 376 
        .end linenumbertable 
    .end code 
.end method 

.method public equals : (Ljava/lang/Object;)Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     invokespecial Method com/threerings/util/g equals (Ljava/lang/Object;)Z 
L5:     ifne L10 
L8:     iconst_0 
L9:     ireturn 

        .stack same 
L10:    aload_1 
L11:    checkcast com/threerings/tudey/data/actor/Actor 
L14:    astore_1 
L15:    aload_0 
L16:    getfield Field com/threerings/tudey/data/actor/Actor _config Lcom/threerings/config/ConfigReference; 
L19:    aload_1 
L20:    getfield Field com/threerings/tudey/data/actor/Actor _config Lcom/threerings/config/ConfigReference; 
L23:    invokevirtual Method com/threerings/config/ConfigReference equals (Ljava/lang/Object;)Z 
L26:    ifeq L112 
L29:    aload_0 
L30:    getfield Field com/threerings/tudey/data/actor/Actor _id I 
L33:    aload_1 
L34:    getfield Field com/threerings/tudey/data/actor/Actor _id I 
L37:    if_icmpne L112 
L40:    aload_0 
L41:    getfield Field com/threerings/tudey/data/actor/Actor _created I 
L44:    aload_1 
L45:    getfield Field com/threerings/tudey/data/actor/Actor _created I 
L48:    if_icmpne L112 
L51:    aload_0 
L52:    getfield Field com/threerings/tudey/data/actor/Actor _destroyed I 
L55:    aload_1 
L56:    getfield Field com/threerings/tudey/data/actor/Actor _destroyed I 
L59:    if_icmpne L112 
L62:    aload_0 
L63:    getfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f; 
L66:    aload_1 
L67:    getfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f; 
L70:    invokevirtual Method com/threerings/math/Vector2f equals (Ljava/lang/Object;)Z 
L73:    ifeq L112 
L76:    aload_0 
L77:    getfield Field com/threerings/tudey/data/actor/Actor _rotation F 
L80:    aload_1 
L81:    getfield Field com/threerings/tudey/data/actor/Actor _rotation F 
L84:    fcmpl 
L85:    ifne L112 
L88:    aload_0 
L89:    getfield Field com/threerings/tudey/data/actor/Actor _flags I 
L92:    aload_1 
L93:    getfield Field com/threerings/tudey/data/actor/Actor _flags I 
L96:    if_icmpne L112 
L99:    aload_0 
L100:   getfield Field com/threerings/tudey/data/actor/Actor bbC [u157] 
L103:   aload_1 
L104:   getfield Field com/threerings/tudey/data/actor/Actor bbC [u157] 
L107:   if_acmpne L112 
L110:   iconst_1 
L111:   ireturn 

        .stack append Object com/threerings/tudey/data/actor/Actor 
L112:   iconst_0 

        .stack stack_1 Integer 
L113:   ireturn 
L114:   
        .linenumbertable 
            L0 383 
            L8 384 
            L10 386 
            L15 387 
        .end linenumbertable 
    .end code 
.end method 

.method public hashCode : ()I 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokespecial Method com/threerings/util/g hashCode ()I 
L4:     istore_1 
L5:     iload_1 
L6:     bipush 31 
L8:     imul 
L9:     aload_0 
L10:    getfield Field com/threerings/tudey/data/actor/Actor _config Lcom/threerings/config/ConfigReference; 
L13:    invokevirtual Method com/threerings/config/ConfigReference hashCode ()I 
L16:    iadd 
L17:    istore_1 
L18:    iload_1 
L19:    bipush 31 
L21:    imul 
L22:    aload_0 
L23:    getfield Field com/threerings/tudey/data/actor/Actor _id I 
L26:    iadd 
L27:    istore_1 
L28:    iload_1 
L29:    bipush 31 
L31:    imul 
L32:    aload_0 
L33:    getfield Field com/threerings/tudey/data/actor/Actor _created I 
L36:    iadd 
L37:    istore_1 
L38:    iload_1 
L39:    bipush 31 
L41:    imul 
L42:    aload_0 
L43:    getfield Field com/threerings/tudey/data/actor/Actor _destroyed I 
L46:    iadd 
L47:    istore_1 
L48:    iload_1 
L49:    bipush 31 
L51:    imul 
L52:    aload_0 
L53:    getfield Field com/threerings/tudey/data/actor/Actor _translation Lcom/threerings/math/Vector2f; 
L56:    invokevirtual Method com/threerings/math/Vector2f hashCode ()I 
L59:    iadd 
L60:    istore_1 
L61:    iload_1 
L62:    bipush 31 
L64:    imul 
L65:    aload_0 
L66:    getfield Field com/threerings/tudey/data/actor/Actor _rotation F 
L69:    invokestatic Method java/lang/Float floatToIntBits (F)I 
L72:    iadd 
L73:    istore_1 
L74:    iload_1 
L75:    bipush 31 
L77:    imul 
L78:    aload_0 
L79:    getfield Field com/threerings/tudey/data/actor/Actor _flags I 
L82:    iadd 
L83:    istore_1 
L84:    iload_1 
L85:    bipush 31 
L87:    imul 
L88:    aload_0 
L89:    getfield Field com/threerings/tudey/data/actor/Actor bbC [u157] 
L92:    invokestatic Method java/lang/System identityHashCode (Ljava/lang/Object;)I 
L95:    iadd 
L96:    dup 
L97:    istore_1 
L98:    ireturn 
L99:    
        .linenumbertable 
            L0 400 
            L5 401 
            L18 402 
            L28 403 
            L38 404 
            L48 405 
            L61 406 
            L74 407 
            L84 408 
            L97 409 
        .end linenumbertable 
    .end code 
.end method 

.method public toString : ()Ljava/lang/String; 
    .code stack 2 locals 1 
L0:     new java/lang/StringBuilder 
L3:     dup 
L4:     invokespecial Method java/lang/StringBuilder <init> ()V 
L7:     ldc '[config=' 
L9:     invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L12:    aload_0 
L13:    getfield Field com/threerings/tudey/data/actor/Actor _config Lcom/threerings/config/ConfigReference; 
L16:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L19:    ldc ', id=' 
L21:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L24:    aload_0 
L25:    getfield Field com/threerings/tudey/data/actor/Actor _id I 
L28:    invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L31:    ldc ']' 
L33:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L36:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L39:    areturn 
L40:    
        .linenumbertable 
            L0 415 
        .end linenumbertable 
    .end code 
.end method 

.method static <clinit> : ()V 
    .code stack 2 locals 0 
L0:     new com/threerings/tudey/config/ActorConfig$Original 
L3:     dup 
L4:     invokespecial Method com/threerings/tudey/config/ActorConfig$Original <init> ()V 
L7:     putstatic Field com/threerings/tudey/data/actor/Actor bbD [u157] 
L10:    return 
L11:    
        .linenumbertable 
            L0 457 
        .end linenumbertable 
    .end code 
.end method 
.innerclasses 
    com/threerings/tudey/config/ActorConfig$Original com/threerings/tudey/config/ActorConfig Original public static 
    com/threerings/tudey/util/b$a com/threerings/tudey/util/b a public static interface abstract 
.end innerclasses 
.sourcefile SourceFile 
.const [u157] = Utf8 Lcom/threerings/tudey/config/ActorConfig$Original; 
.end class 
