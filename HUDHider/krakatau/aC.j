.version 49 0 
.class public super com/threerings/projectx/client/aC 
.super com/threerings/opengl/gui/aj 
.implements com/samskivert/swing/f 
.implements com/threerings/crowd/chat/client/k$a 
.implements com/threerings/crowd/chat/data/a 
.implements com/threerings/presents/dobj/i 
.implements com/threerings/projectx/data/ProjectXCodes 
.implements com/threerings/projectx/item/client/g$c 
.field protected _ctx Lcom/threerings/projectx/util/A; 
.field protected acf Lcom/threerings/projectx/client/et; 
.field protected aeW Lcom/threerings/projectx/client/hud/Minimap; 
.field protected aeX Lcom/threerings/projectx/client/hud/q; 
.field protected aeY Lcom/threerings/projectx/item/client/f; 
.field private aeZ Lcom/threerings/projectx/item/client/q; 
.field protected afa Lcom/threerings/projectx/client/ch; 
.field private afb Z 
.field private afc Lcom/threerings/projectx/social/client/F; 
.field private afd Lcom/threerings/projectx/social/client/k; 
.field private afe Lcom/threerings/projectx/client/UplinkWindow; 
.field private aff Lcom/threerings/projectx/mission/client/u; 
.field private afg Lcom/threerings/projectx/client/HelpWindow; 
.field private afh Lcom/threerings/projectx/sprites/a/l; 
.field protected afi Lcom/threerings/projectx/client/m; 
.field private afj Lcom/threerings/projectx/client/eW; 
.field private afk Lcom/threerings/projectx/craft/a/z; 
.field private afl Z 
.field private afm Lcom/threerings/projectx/client/fp; 
.field protected afn Lcom/threerings/projectx/client/hud/K; 
.field private afo Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/threerings/projectx/client/ui/c;>; 
.end fieldattributes 
.field private afp Lcom/threerings/projectx/client/aC$c; 
.field protected afq Lcom/threerings/projectx/client/hud/u; 
.field private afr Lcom/threerings/opengl/gui/event/e; 
.field protected afs Lcom/threerings/projectx/client/hud/U; 
.field protected aft Lcom/threerings/projectx/client/hud/y; 
.field protected afu Lcom/threerings/projectx/client/hud/a; 
.field protected afv Lcom/threerings/projectx/client/hud/J; 
.field protected afw Lcom/threerings/projectx/client/hud/s; 
.field private afx Lcom/threerings/projectx/client/aB; 
.field private afy Lcom/threerings/projectx/client/aC$a; 
.field private static afz Z 

.method public static g : (Lcom/threerings/projectx/util/A;)I 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     invokeinterface InterfaceMethod com/threerings/projectx/util/A xa ()Lcom/threerings/projectx/client/eh; 1 
L6:     invokevirtual Method com/threerings/projectx/client/eh getDisplayHeight ()I 
L9:     dup 
L10:    istore_0 
L11:    sipush 145 
L14:    isub 
L15:    ireturn 
L16:    
        .linenumbertable 
            L0 123 
            L10 124 
        .end linenumbertable 
    .end code 
.end method 

.method public static a : (Lcom/threerings/projectx/util/A;I)I 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokeinterface InterfaceMethod com/threerings/projectx/util/A xa ()Lcom/threerings/projectx/client/eh; 1 
L6:     invokevirtual Method com/threerings/projectx/client/eh getDisplayHeight ()I 
L9:     dup 
L10:    istore_0 
L11:    iload_1 
L12:    isub 
L13:    ireturn 
L14:    
        .linenumbertable 
            L0 133 
            L10 134 
        .end linenumbertable 
    .end code 
.end method 

.method public static a : (Lcom/threerings/projectx/util/A;Lcom/threerings/opengl/gui/aE;)V 
    .code stack 4 locals 2 
L0:     aload_1 
L1:     aload_0 
L2:     invokeinterface InterfaceMethod com/threerings/projectx/util/A xa ()Lcom/threerings/projectx/client/eh; 1 
L7:     invokevirtual Method com/threerings/projectx/client/eh getDisplayWidth ()I 
L10:    aload_1 
L11:    invokevirtual Method com/threerings/opengl/gui/aE getWidth ()I 
L14:    isub 
L15:    iconst_2 
L16:    idiv 
L17:    aload_0 
L18:    aload_1 
L19:    invokevirtual Method com/threerings/opengl/gui/aE getHeight ()I 
L22:    invokestatic Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/util/A;I)I 
L25:    invokevirtual Method com/threerings/opengl/gui/aE setLocation (II)V 
L28:    return 
L29:    
        .linenumbertable 
            L0 142 
            L28 144 
        .end linenumbertable 
    .end code 
.end method 

.method public static h : (Lcom/threerings/projectx/util/A;)Lcom/threerings/projectx/client/aC; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     invokeinterface InterfaceMethod com/threerings/projectx/util/A xb ()Lcom/threerings/projectx/client/ProjectXApp; 1 
L6:     invokevirtual Method com/threerings/projectx/client/ProjectXApp wQ ()Lcom/threerings/opengl/q; 
L9:     dup 
L10:    astore_0 
L11:    instanceof com/threerings/projectx/client/et 
L14:    ifeq L25 
L17:    aload_0 
L18:    checkcast com/threerings/projectx/client/et 
L21:    invokevirtual Method com/threerings/projectx/client/et yO ()Lcom/threerings/projectx/client/aC; 
L24:    areturn 

        .stack append Object java/lang/Object 
L25:    aconst_null 

        .stack stack_1 Object com/threerings/projectx/client/aC 
L26:    areturn 
L27:    
        .linenumbertable 
            L0 151 
            L10 152 
        .end linenumbertable 
    .end code 
.end method 

.method public static a : (Lcom/threerings/projectx/util/A;Ljava/lang/String;Lcom/threerings/projectx/client/Command;)Ljava/lang/String; 
    .code stack 6 locals 3 
L0:     aload_0 
L1:     invokeinterface InterfaceMethod com/threerings/projectx/util/A getMessageManager ()Lcom/threerings/util/O; 1 
L6:     ldc 'projectx' 
L8:     invokevirtual Method com/threerings/util/O dI (Ljava/lang/String;)Lcom/threerings/util/N; 
L11:    dup 
L12:    astore_0 
L13:    aload_2 
L14:    invokestatic Method com/threerings/projectx/util/a MU ()Z 
L17:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs a (Lcom/threerings/util/N;Lcom/threerings/projectx/client/ProjectXPrefs$b;Z)Ljava/lang/String; 
L20:    dup 
L21:    astore_2 
L22:    ifnonnull L27 
L25:    aload_1 
L26:    areturn 

        .stack append Object com/threerings/util/N Object java/lang/String 
L27:    aload_0 
L28:    ldc 'i.hotkey' 
L30:    iconst_2 
L31:    anewarray java/lang/String 
L34:    dup 
L35:    iconst_0 
L36:    aload_1 
L37:    aastore 
L38:    dup 
L39:    iconst_1 
L40:    aload_2 
L41:    aastore 
L42:    invokevirtual Method com/threerings/util/N g (Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String; 

        .stack stack_1 Object java/lang/String 
L45:    areturn 
L46:    
        .linenumbertable 
            L0 162 
            L12 163 
            L21 164 
        .end linenumbertable 
    .end code 
.end method 

.method public <init> : (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/et;)V 
    .code stack 11 locals 3 
L0:     aload_0 
L1:     aload_1 
L2:     new com/threerings/opengl/gui/d/b 
L5:     dup 
L6:     invokespecial Method com/threerings/opengl/gui/d/b <init> ()V 
L9:     invokespecial Method com/threerings/opengl/gui/aj <init> (Lcom/threerings/openal/a/a;Lcom/threerings/opengl/gui/d/g;)V 
L12:    aload_0 
L13:    invokestatic Method com/google/common/collect/Lists newArrayList ()Ljava/util/ArrayList; 
L16:    putfield Field com/threerings/projectx/client/aC afo Ljava/util/List; 
L19:    aload_0 
L20:    new com/threerings/projectx/client/aN 
L23:    dup 
L24:    aload_0 
L25:    invokespecial Method com/threerings/projectx/client/aN <init> (Lcom/threerings/projectx/client/aC;)V 
L28:    putfield Field com/threerings/projectx/client/aC afr Lcom/threerings/opengl/gui/event/e; 
L31:    aload_0 
L32:    aload_1 
L33:    putfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L36:    aload_0 
L37:    aload_2 
L38:    putfield Field com/threerings/projectx/client/aC acf Lcom/threerings/projectx/client/et; 
L41:    aload_0 
L42:    new com/threerings/projectx/client/aC$a 
L45:    dup 
L46:    aload_0 
L47:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L50:    invokespecial Method com/threerings/projectx/client/aC$a <init> (Lcom/threerings/projectx/util/A;)V 
L53:    putfield Field com/threerings/projectx/client/aC afy Lcom/threerings/projectx/client/aC$a; 
L56:    aload_0 
L57:    aload_0 
L58:    getfield Field com/threerings/projectx/client/aC afy Lcom/threerings/projectx/client/aC$a; 
L61:    getstatic Field com/threerings/opengl/gui/d/b NORTH Lcom/threerings/opengl/gui/d/b$a; 
L64:    invokevirtual Method com/threerings/projectx/client/aC add (Lcom/threerings/opengl/gui/q;Ljava/lang/Object;)V 
L67:    aload_2 
L68:    instanceof com/threerings/projectx/design/a/f 
L71:    ifeq L109 
L74:    aload_0 
L75:    new com/threerings/opengl/gui/ay 
L78:    dup 
L79:    aload_0 
L80:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L83:    ldc 'ui/design/interface_border.dat' 
L85:    invokespecial Method com/threerings/opengl/gui/ay <init> (Lcom/threerings/openal/a/a;Ljava/lang/String;)V 
L88:    new com/threerings/opengl/gui/d/b$a 
L91:    dup 
L92:    ldc +0.5f 
L94:    ldc +0.5f 
L96:    ldc +0.5f 
L98:    ldc +0.5f 
L100:   iconst_0 
L101:   iconst_0 
L102:   iconst_1 
L103:   invokespecial Method com/threerings/opengl/gui/d/b$a <init> (FFFFIIZ)V 
L106:   invokevirtual Method com/threerings/projectx/client/aC add (Lcom/threerings/opengl/gui/q;Ljava/lang/Object;)V 

        .stack full 
            locals Object com/threerings/projectx/client/aC Object com/threerings/projectx/util/A Object com/threerings/projectx/client/et 
            stack 
        .end stack 
L109:   aload_0 
L110:   invokevirtual Method com/threerings/projectx/client/aC vl ()V 
L113:   aload_0 
L114:   invokevirtual Method com/threerings/projectx/client/aC vm ()V 
L117:   aload_0 
L118:   dup 
L119:   astore_1 
L120:   getfield Field com/threerings/projectx/client/aC afy Lcom/threerings/projectx/client/aC$a; 
L123:   ldc 'rightMenu' 
L125:   aload_1 
L126:   getfield Field com/threerings/projectx/client/aC afs Lcom/threerings/projectx/client/hud/U; 
L129:   invokevirtual Method com/threerings/projectx/client/aC$a registerComponent (Ljava/lang/String;Lcom/threerings/opengl/gui/q;)V 
L132:   aload_1 
L133:   getfield Field com/threerings/projectx/client/aC afy Lcom/threerings/projectx/client/aC$a; 
L136:   ldc 'leftMenu' 
L138:   aload_1 
L139:   getfield Field com/threerings/projectx/client/aC aft Lcom/threerings/projectx/client/hud/y; 
L142:   invokevirtual Method com/threerings/projectx/client/aC$a registerComponent (Ljava/lang/String;Lcom/threerings/opengl/gui/q;)V 
L145:   aload_1 
L146:   getfield Field com/threerings/projectx/client/aC afy Lcom/threerings/projectx/client/aC$a; 
L149:   ldc 'activities' 
L151:   aload_1 
L152:   getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L155:   invokevirtual Method com/threerings/projectx/client/aC$a registerComponent (Ljava/lang/String;Lcom/threerings/opengl/gui/q;)V 
L158:   aload_1 
L159:   getfield Field com/threerings/projectx/client/aC afy Lcom/threerings/projectx/client/aC$a; 
L162:   ldc 'objectives' 
L164:   aload_1 
L165:   getfield Field com/threerings/projectx/client/aC afv Lcom/threerings/projectx/client/hud/J; 
L168:   invokevirtual Method com/threerings/projectx/client/aC$a registerComponent (Ljava/lang/String;Lcom/threerings/opengl/gui/q;)V 
L171:   aload_1 
L172:   getfield Field com/threerings/projectx/client/aC afy Lcom/threerings/projectx/client/aC$a; 
L175:   ldc 'energy' 
L177:   aload_1 
L178:   getfield Field com/threerings/projectx/client/aC afw Lcom/threerings/projectx/client/hud/s; 
L181:   invokevirtual Method com/threerings/projectx/client/aC$a registerComponent (Ljava/lang/String;Lcom/threerings/opengl/gui/q;)V 

        invokestatic Method sumguytho/common/ModManagerImpl get__Callback ()Lsumguytho/common/ModManagerImpl;
        aload_1
        getfield Field com/threerings/projectx/client/aC afy Lcom/threerings/projectx/client/aC$a;
        invokevirtual Method sumguytho/common/ModManagerImpl setHUDWndSmth__Callback (Lcom/threerings/projectx/client/aC$a;)V

L184:   aload_0 
L185:   getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L188:   invokeinterface InterfaceMethod com/threerings/projectx/util/A xa ()Lcom/threerings/projectx/client/eh; 1 
L193:   fconst_1 
L194:   invokevirtual Method com/threerings/projectx/client/eh setTooltipTimeout (F)V 
L197:   aload_0 
L198:   getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L201:   invokeinterface InterfaceMethod com/threerings/projectx/util/A xa ()Lcom/threerings/projectx/client/eh; 1 
L206:   sipush 300 
L209:   invokevirtual Method com/threerings/projectx/client/eh setTooltipPreferredWidth (I)V 

        invokestatic Method sumguytho/common/ModManagerImpl get__Callback ()Lsumguytho/common/ModManagerImpl;
        aload_0
        invokevirtual Method sumguytho/common/ModManagerImpl setHUDWnd__Callback (Lcom/threerings/projectx/client/aC;)V

L212:   return 
L213:   
        .linenumbertable 
            L0 195 
            L12 1648 
            L19 1657 
            L31 196 
            L36 197 
            L41 199 
            L56 200 
            L67 202 
            L74 203 
            L109 207 
            L113 208 
            L117 209 
            L184 212 
            L197 215 
            L212 216 
        .end linenumbertable 
    .end code 
.end method 

.method public final Y : (Z)Lcom/threerings/projectx/item/client/ai; 
    .code stack 5 locals 2 
L0:     new com/threerings/projectx/client/aD 
L3:     dup 
L4:     aload_0 
L5:     aload_0 
L6:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L9:     iload_1 
L10:    invokespecial Method com/threerings/projectx/client/aD <init> (Lcom/threerings/projectx/client/aC;Lcom/threerings/projectx/util/A;Z)V 
L13:    areturn 
L14:    
        .linenumbertable 
            L0 223 
        .end linenumbertable 
    .end code 
.end method 

.method public rereadPrefs : (Lcom/threerings/projectx/client/ProjectXPrefs$c;)V 
    .code stack 0 locals 2 
L0:     return 
L1:     
        .linenumbertable 
            L0 252 
        .end linenumbertable 
    .end code 
    .runtime visible annotations 
        .annotation Lcom/google/common/eventbus/Subscribe; 
        .end annotation 
    .end runtime 
.end method 

.method public final uG : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afy Lcom/threerings/projectx/client/aC$a; 
L4:     ldc 'Add/HUD' 
L6:     invokevirtual Method com/threerings/projectx/client/aC$a runScript (Ljava/lang/String;)V 

        invokestatic Method sumguytho/hudhider/HUDHider get__Callback ()Lsumguytho/hudhider/HUDHider;
        invokevirtual Method sumguytho/hudhider/HUDHider addHUDScript__Callback ()V

L9:     return 
L10:    
        .linenumbertable 
            L0 259 
            L9 260 
        .end linenumbertable 
    .end code 
.end method 

.method public final uH : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afy Lcom/threerings/projectx/client/aC$a; 
L4:     ldc 'Remove/HUD' 
L6:     invokevirtual Method com/threerings/projectx/client/aC$a runScript (Ljava/lang/String;)V 
L9:     return 
L10:    
        .linenumbertable 
            L0 267 
            L9 268 
        .end linenumbertable 
    .end code 
.end method 

.method public final uI : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L4:     iconst_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/a aX (Z)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 275 
            L8 276 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Lcom/threerings/projectx/client/aC$c;)V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/threerings/projectx/client/aC afp Lcom/threerings/projectx/client/aC$c; 
L5:     aload_1 
L6:     ifnull L27 
L9:     aload_1 
L10:    aload_0 
L11:    invokevirtual Method com/threerings/projectx/client/aC vz ()Z 
L14:    aload_0 
L15:    invokespecial Method com/threerings/projectx/client/aC vA ()Z 
L18:    aload_0 
L19:    invokespecial Method com/threerings/projectx/client/aC vB ()Z 
L22:    invokeinterface InterfaceMethod com/threerings/projectx/client/aC$c a (ZZZ)V 4 

        .stack same 
L27:    return 
L28:    
        .linenumbertable 
            L0 284 
            L5 285 
            L9 286 
            L27 288 
        .end linenumbertable 
    .end code 
.end method 

.method public final bG : (I)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aeW Lcom/threerings/projectx/client/hud/Minimap; 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC aeW Lcom/threerings/projectx/client/hud/Minimap; 
L11:    iload_1 
L12:    invokevirtual Method com/threerings/projectx/client/hud/Minimap bG (I)V 

        .stack same 
L15:    return 
L16:    
        .linenumbertable 
            L0 295 
            L7 296 
            L15 298 
        .end linenumbertable 
    .end code 
.end method 

.method public final uJ : ()Lcom/threerings/projectx/client/hud/Minimap; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aeW Lcom/threerings/projectx/client/hud/Minimap; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 305 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Lcom/threerings/projectx/client/ui/c;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afo Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
        .linenumbertable 
            L0 313 
            L11 314 
        .end linenumbertable 
    .end code 
.end method 

.method public final b : (Lcom/threerings/projectx/client/ui/c;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afo Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
        .linenumbertable 
            L0 321 
            L11 322 
        .end linenumbertable 
    .end code 
.end method 

.method public final uK : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L31 
L10:    aload_0 
L11:    getfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 
L14:    invokevirtual Method com/threerings/projectx/client/m tS ()Lcom/threerings/projectx/client/LoadoutPanel; 
L17:    invokevirtual Method com/threerings/projectx/client/LoadoutPanel vO ()Z 
L20:    ifeq L31 
L23:    aload_0 
L24:    getfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 
L27:    invokevirtual Method com/threerings/projectx/client/m dismiss ()V 
L30:    return 

        .stack same 
L31:    aload_0 
L32:    aconst_null 
L33:    aconst_null 
L34:    invokespecial Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/data/PlayerEquipment;Lcom/threerings/projectx/client/LoadoutPanel$Tab;)V 

        .stack same 
L37:    return 
L38:    
        .linenumbertable 
            L0 329 
            L23 330 
            L31 332 
            L37 334 
        .end linenumbertable 
    .end code 
.end method 

.method public final uL : ()V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L43 
L10:    aload_0 
L11:    getfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 
L14:    invokevirtual Method com/threerings/projectx/client/m tS ()Lcom/threerings/projectx/client/LoadoutPanel; 
L17:    dup 
L18:    astore_1 
L19:    invokevirtual Method com/threerings/projectx/client/LoadoutPanel vO ()Z 
L22:    ifeq L43 
L25:    aload_1 
L26:    invokevirtual Method com/threerings/projectx/client/LoadoutPanel vP ()Lcom/threerings/projectx/client/LoadoutPanel$Tab; 
L29:    getstatic Field com/threerings/projectx/client/LoadoutPanel$Tab ACHIEVEMENTS Lcom/threerings/projectx/client/LoadoutPanel$Tab; 
L32:    if_acmpne L43 
L35:    aload_0 
L36:    getfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 
L39:    invokevirtual Method com/threerings/projectx/client/m dismiss ()V 
L42:    return 

        .stack same 
L43:    aload_0 
L44:    dup 
L45:    astore_1 
L46:    aconst_null 
L47:    getstatic Field com/threerings/projectx/client/LoadoutPanel$Tab ACHIEVEMENTS Lcom/threerings/projectx/client/LoadoutPanel$Tab; 
L50:    invokespecial Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/data/PlayerEquipment;Lcom/threerings/projectx/client/LoadoutPanel$Tab;)V 
L53:    return 
L54:    
        .linenumbertable 
            L0 342 
            L10 343 
            L18 344 
            L35 345 
            L42 346 
            L43 350 
            L53 351 
        .end linenumbertable 
    .end code 
.end method 

.method public final uM : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afa Lcom/threerings/projectx/client/ch; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L18 
L10:    aload_0 
L11:    getfield Field com/threerings/projectx/client/aC afa Lcom/threerings/projectx/client/ch; 
L14:    invokevirtual Method com/threerings/projectx/client/ch dismiss ()V 
L17:    return 

        .stack same 
L18:    aload_0 
L19:    invokespecial Method com/threerings/projectx/client/aC vs ()V 

        .stack same 
L22:    return 
L23:    
        .linenumbertable 
            L0 358 
            L10 359 
            L18 361 
            L22 363 
        .end linenumbertable 
    .end code 
.end method 

.method public final uN : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afb Z 
L4:     ifne L29 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L11:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L14:    ifeq L25 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L21:    invokevirtual Method com/threerings/projectx/item/client/f dismiss ()V 
L24:    return 

        .stack same 
L25:    aload_0 
L26:    invokespecial Method com/threerings/projectx/client/aC vt ()V 

        .stack same 
L29:    return 
L30:    
        .linenumbertable 
            L0 370 
            L7 371 
            L17 372 
            L25 374 
            L29 377 
        .end linenumbertable 
    .end code 
.end method 

.method public final b : (Lcom/threerings/projectx/item/data/Item;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokespecial Method com/threerings/projectx/client/aC vt ()V 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L8:     ifnull L19 
L11:    aload_0 
L12:    getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L15:    aload_1 
L16:    invokevirtual Method com/threerings/projectx/item/client/f n (Lcom/threerings/projectx/item/data/Item;)V 

        .stack same 
L19:    return 
L20:    
        .linenumbertable 
            L0 382 
            L4 383 
            L11 384 
            L19 386 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Lcom/threerings/projectx/item/data/LevelItem;)V 
    .code stack 5 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L4:     ifeq L42 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC aeZ Lcom/threerings/projectx/item/client/q; 
L11:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L14:    ifne L34 
L17:    aload_0 
L18:    new com/threerings/projectx/item/client/q 
L21:    dup 
L22:    aload_0 
L23:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L26:    aload_1 
L27:    invokespecial Method com/threerings/projectx/item/client/q <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/item/data/LevelItem;)V 
L30:    putfield Field com/threerings/projectx/client/aC aeZ Lcom/threerings/projectx/item/client/q; 
L33:    return 

        .stack same 
L34:    aload_0 
L35:    getfield Field com/threerings/projectx/client/aC aeZ Lcom/threerings/projectx/item/client/q; 
L38:    aload_1 
L39:    invokevirtual Method com/threerings/projectx/item/client/q b (Lcom/threerings/projectx/item/data/LevelItem;)V 

        .stack same 
L42:    return 
L43:    
        .linenumbertable 
            L0 393 
            L7 394 
            L17 395 
            L34 397 
            L42 400 
        .end linenumbertable 
    .end code 
    .runtime visible paramannotations 
        .paramannotation 
            .annotation Ljavax/annotation/Nullable; 
            .end annotation 
        .end paramannotation 
    .end runtime 
.end method 

.method public final uO : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aeZ Lcom/threerings/projectx/item/client/q; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L18 
L10:    aload_0 
L11:    getfield Field com/threerings/projectx/client/aC aeZ Lcom/threerings/projectx/item/client/q; 
L14:    invokevirtual Method com/threerings/projectx/item/client/q dismiss ()V 
L17:    return 

        .stack same 
L18:    aload_0 
L19:    aconst_null 
L20:    invokevirtual Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/item/data/LevelItem;)V 

        .stack same 
L23:    return 
L24:    
        .linenumbertable 
            L0 407 
            L10 408 
            L18 410 
            L23 412 
        .end linenumbertable 
    .end code 
.end method 

.method public final uP : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     aconst_null 
L2:     getstatic Field com/threerings/projectx/client/LoadoutPanel$Tab EQUIP Lcom/threerings/projectx/client/LoadoutPanel$Tab; 
L5:     invokespecial Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/data/PlayerEquipment;Lcom/threerings/projectx/client/LoadoutPanel$Tab;)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 419 
            L8 420 
        .end linenumbertable 
    .end code 
.end method 

.method public final uQ : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     aconst_null 
L2:     getstatic Field com/threerings/projectx/client/LoadoutPanel$Tab SPRITE Lcom/threerings/projectx/client/LoadoutPanel$Tab; 
L5:     invokespecial Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/data/PlayerEquipment;Lcom/threerings/projectx/client/LoadoutPanel$Tab;)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 427 
            L8 428 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Lcom/threerings/projectx/data/Loadout;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokespecial Method com/threerings/projectx/client/aC vs ()V 
L4:     aload_1 
L5:     ifnull L16 
L8:     aload_0 
L9:     getfield Field com/threerings/projectx/client/aC afa Lcom/threerings/projectx/client/ch; 
L12:    aload_1 
L13:    invokevirtual Method com/threerings/projectx/client/ch a (Lcom/threerings/projectx/data/Loadout;)V 

        .stack same 
L16:    return 
L17:    
        .linenumbertable 
            L0 435 
            L4 436 
            L8 437 
            L16 439 
        .end linenumbertable 
    .end code 
.end method 

.method public final Z : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/threerings/projectx/client/aC afl Z 
L5:     iload_1 
L6:     ifeq L23 
L9:     aload_0 
L10:    getfield Field com/threerings/projectx/client/aC afk Lcom/threerings/projectx/craft/a/z; 
L13:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L16:    ifeq L23 
L19:    aload_0 
L20:    invokevirtual Method com/threerings/projectx/client/aC uS ()V 

        .stack same 
L23:    return 
L24:    
        .linenumbertable 
            L0 446 
            L5 447 
            L19 448 
            L23 450 
        .end linenumbertable 
    .end code 
.end method 

.method public final b : (ZZ)V 
    .code stack 3 locals 4 
L0:     aconst_null 
L1:     astore_3 
L2:     iload_2 
L3:     ifeq L24 
L6:     aload_0 
L7:     iload_1 
L8:     putfield Field com/threerings/projectx/client/aC afb Z 
L11:    iload_1 
L12:    ifne L19 
L15:    iconst_1 
L16:    goto L20 

        .stack append Object java/lang/Boolean 
L19:    iconst_0 

        .stack stack_1 Integer 
L20:    invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L23:    astore_3 

        .stack same 
L24:    aload_0 
L25:    getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L28:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L31:    dup 
L32:    istore_2 
L33:    ifne L41 
L36:    aload_0 
L37:    aconst_null 
L38:    putfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 

        .stack append Integer 
L41:    aload_0 
L42:    getfield Field com/threerings/projectx/client/aC afb Z 
L45:    ifne L56 
L48:    iload_1 
L49:    ifne L56 
L52:    iload_2 
L53:    ifeq L60 

        .stack same 
L56:    iconst_1 
L57:    goto L61 

        .stack same 
L60:    iconst_0 

        .stack stack_1 Integer 
L61:    istore_1 
L62:    aload_0 
L63:    getfield Field com/threerings/projectx/client/aC afa Lcom/threerings/projectx/client/ch; 
L66:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L69:    ifeq L79 
L72:    aload_0 
L73:    getfield Field com/threerings/projectx/client/aC afa Lcom/threerings/projectx/client/ch; 
L76:    invokevirtual Method com/threerings/projectx/client/ch tI ()V 

        .stack append Integer 
L79:    aload_0 
L80:    getfield Field com/threerings/projectx/client/aC afs Lcom/threerings/projectx/client/hud/U; 
L83:    iload_1 
L84:    aload_3 
L85:    invokevirtual Method com/threerings/projectx/client/hud/U a (ZLjava/lang/Boolean;)V 
L88:    return 
L89:    
        .linenumbertable 
            L0 458 
            L2 459 
            L6 460 
            L11 461 
            L24 464 
            L32 465 
            L36 467 
            L41 469 
            L62 470 
            L72 471 
            L79 474 
            L88 475 
        .end linenumbertable 
    .end code 
.end method 

.method public final f : (Ljava/lang/Runnable;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L4:     aload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/a f (Ljava/lang/Runnable;)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 482 
            L8 483 
        .end linenumbertable 
    .end code 
.end method 

.method public final aa : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/a aa (Z)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 490 
            L8 491 
        .end linenumbertable 
    .end code 
.end method 

.method public final uR : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afc Lcom/threerings/projectx/social/client/F; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L18 
L10:    aload_0 
L11:    getfield Field com/threerings/projectx/client/aC afc Lcom/threerings/projectx/social/client/F; 
L14:    invokevirtual Method com/threerings/projectx/social/client/F getWidth ()I 
L17:    ireturn 

        .stack same 
L18:    iconst_0 

        .stack stack_1 Integer 
L19:    ireturn 
L20:    
        .linenumbertable 
            L0 498 
        .end linenumbertable 
    .end code 
.end method 

.method public final ab : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afs Lcom/threerings/projectx/client/hud/U; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/U ab (Z)V 
L8:     iload_1 
L9:     ifne L17 
L12:    aload_0 
L13:    aconst_null 
L14:    putfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 

        .stack same 
L17:    return 
L18:    
        .linenumbertable 
            L0 506 
            L8 507 
            L12 508 
            L17 510 
        .end linenumbertable 
    .end code 
.end method 

.method public final ac : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/a ac (Z)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 514 
            L8 515 
        .end linenumbertable 
    .end code 
.end method 

.method public final ad : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/a ad (Z)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 522 
            L8 523 
        .end linenumbertable 
    .end code 
.end method 

.method public final ae : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/a ae (Z)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 528 
            L8 529 
        .end linenumbertable 
    .end code 
.end method 

.method public final af : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afs Lcom/threerings/projectx/client/hud/U; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/U af (Z)V 
L8:     iload_1 
L9:     ifne L17 
L12:    aload_0 
L13:    aconst_null 
L14:    putfield Field com/threerings/projectx/client/aC afa Lcom/threerings/projectx/client/ch; 

        .stack same 
L17:    return 
L18:    
        .linenumbertable 
            L0 536 
            L8 537 
            L12 538 
            L17 540 
        .end linenumbertable 
    .end code 
.end method 

.method public final ag : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aft Lcom/threerings/projectx/client/hud/y; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/y ag (Z)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 544 
            L8 545 
        .end linenumbertable 
    .end code 
.end method 

.method public final ah : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aft Lcom/threerings/projectx/client/hud/y; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/y ah (Z)V 
L8:     iload_1 
L9:     ifne L17 
L12:    aload_0 
L13:    aconst_null 
L14:    putfield Field com/threerings/projectx/client/aC afc Lcom/threerings/projectx/social/client/F; 

        .stack same 
L17:    aload_0 
L18:    invokespecial Method com/threerings/projectx/client/aC vw ()V 
L21:    return 
L22:    
        .linenumbertable 
            L0 552 
            L8 553 
            L12 554 
            L17 556 
            L21 557 
        .end linenumbertable 
    .end code 
.end method 

.method public final ai : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aft Lcom/threerings/projectx/client/hud/y; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/y ai (Z)V 
L8:     iload_1 
L9:     ifne L17 
L12:    aload_0 
L13:    aconst_null 
L14:    putfield Field com/threerings/projectx/client/aC afd Lcom/threerings/projectx/social/client/k; 

        .stack same 
L17:    return 
L18:    
        .linenumbertable 
            L0 564 
            L8 565 
            L12 566 
            L17 568 
        .end linenumbertable 
    .end code 
.end method 

.method public final aj : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aft Lcom/threerings/projectx/client/hud/y; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/y aj (Z)V 
L8:     iload_1 
L9:     ifne L17 
L12:    aload_0 
L13:    aconst_null 
L14:    putfield Field com/threerings/projectx/client/aC afe Lcom/threerings/projectx/client/UplinkWindow; 

        .stack same 
L17:    return 
L18:    
        .linenumbertable 
            L0 575 
            L8 576 
            L12 577 
            L17 579 
        .end linenumbertable 
    .end code 
.end method 

.method public final ak : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/a ak (Z)V 
L8:     iload_1 
L9:     ifne L17 
L12:    aload_0 
L13:    aconst_null 
L14:    putfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 

        .stack same 
L17:    return 
L18:    
        .linenumbertable 
            L0 586 
            L8 587 
            L12 588 
            L17 590 
        .end linenumbertable 
    .end code 
.end method 

.method public final al : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aft Lcom/threerings/projectx/client/hud/y; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/y al (Z)V 
L8:     iload_1 
L9:     ifne L17 
L12:    aload_0 
L13:    aconst_null 
L14:    putfield Field com/threerings/projectx/client/aC afg Lcom/threerings/projectx/client/HelpWindow; 

        .stack same 
L17:    return 
L18:    
        .linenumbertable 
            L0 597 
            L8 598 
            L12 599 
            L17 601 
        .end linenumbertable 
    .end code 
.end method 

.method public final am : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/a am (Z)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 608 
            L8 609 
        .end linenumbertable 
    .end code 
.end method 

.method public final an : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afs Lcom/threerings/projectx/client/hud/U; 
L4:     iload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/U an (Z)V 
L8:     iload_1 
L9:     ifne L17 
L12:    aload_0 
L13:    aconst_null 
L14:    putfield Field com/threerings/projectx/client/aC aeZ Lcom/threerings/projectx/item/client/q; 

        .stack same 
L17:    return 
L18:    
        .linenumbertable 
            L0 616 
            L8 617 
            L12 618 
            L17 620 
        .end linenumbertable 
    .end code 
.end method 

.method public final aT : (Ljava/lang/Class;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L4:     aload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/a aT (Ljava/lang/Class;)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 628 
            L8 629 
        .end linenumbertable 
    .end code 
    .signature (Ljava/lang/Class<+Lcom/threerings/projectx/social/data/Notification;>;)V 
.end method 

.method public final uS : ()V 
    .code stack 5 locals 3 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afk Lcom/threerings/projectx/craft/a/z; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L32 
L10:    aload_0 
L11:    iconst_1 
L12:    anewarray com/threerings/opengl/gui/aE 
L15:    dup 
L16:    iconst_0 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/aC afk Lcom/threerings/projectx/craft/a/z; 
L21:    aastore 
L22:    invokespecial Method com/threerings/projectx/client/aC a ([Lcom/threerings/opengl/gui/aE;)Z 
L25:    pop 
L26:    aload_0 
L27:    aconst_null 
L28:    putfield Field com/threerings/projectx/client/aC afk Lcom/threerings/projectx/craft/a/z; 
L31:    return 

        .stack same 
L32:    aload_0 
L33:    getfield Field com/threerings/projectx/client/aC afl Z 
L36:    ifeq L53 
L39:    aload_0 
L40:    getfield Field com/threerings/projectx/client/aC acf Lcom/threerings/projectx/client/et; 
L43:    invokevirtual Method com/threerings/projectx/client/et Of ()Lcom/threerings/tudey/a/a; 
L46:    checkcast com/threerings/projectx/client/en 
L49:    invokevirtual Method com/threerings/projectx/client/en yD ()V 
L52:    return 

        .stack same 
L53:    aload_0 
L54:    dup 
L55:    astore_1 
L56:    invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L59:    ifeq L129 
L62:    aload_1 
L63:    getfield Field com/threerings/projectx/client/aC afl Z 
L66:    ifne L129 
L69:    aload_1 
L70:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L73:    invokeinterface InterfaceMethod com/threerings/projectx/util/A rr ()Lcom/threerings/crowd/client/d; 1 
L78:    invokevirtual Method com/threerings/crowd/client/d ik ()Lcom/threerings/crowd/data/PlaceObject; 
L81:    dup 
L82:    astore_2 
L83:    instanceof com/threerings/projectx/town/data/TownSceneObject 
L86:    ifeq L113 
L89:    aload_2 
L90:    checkcast com/threerings/projectx/town/data/TownSceneObject 
L93:    getfield Field com/threerings/projectx/town/data/TownSceneObject townSceneService Lcom/threerings/projectx/town/data/TownSceneMarshaller; 
L96:    new com/threerings/projectx/client/chat/a 
L99:    dup 
L100:   aload_1 
L101:   getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L104:   ldc 'craft' 
L106:   invokespecial Method com/threerings/projectx/client/chat/a <init> (Lcom/threerings/projectx/util/A;Ljava/lang/String;)V 
L109:   invokevirtual Method com/threerings/projectx/town/data/TownSceneMarshaller l (Lcom/threerings/presents/client/D;)V 
L112:   return 
L113:   aload_1 
L114:   new com/threerings/projectx/craft/a/z 
L117:   dup 
L118:   aload_1 
L119:   getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L122:   aload_1 
L123:   invokespecial Method com/threerings/projectx/craft/a/z <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/item/client/g$c;)V 
L126:   putfield Field com/threerings/projectx/client/aC afk Lcom/threerings/projectx/craft/a/z; 

        .stack same_extended 
L129:   return 
L130:   
        .linenumbertable 
            L0 636 
            L10 637 
            L26 638 
            L32 639 
            L39 640 
            L53 642 
            L129 644 
        .end linenumbertable 
    .end code 
.end method 

.method public final uT : ()V 
    .code stack 5 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afc Lcom/threerings/projectx/social/client/F; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L27 
L10:    aload_0 
L11:    iconst_1 
L12:    anewarray com/threerings/opengl/gui/aE 
L15:    dup 
L16:    iconst_0 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/aC afc Lcom/threerings/projectx/social/client/F; 
L21:    aastore 
L22:    invokespecial Method com/threerings/projectx/client/aC a ([Lcom/threerings/opengl/gui/aE;)Z 
L25:    pop 
L26:    return 

        .stack same 
L27:    aload_0 
L28:    dup 
L29:    astore_1 
L30:    invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L33:    ifeq L65 
L36:    aload_1 
L37:    getfield Field com/threerings/projectx/client/aC afc Lcom/threerings/projectx/social/client/F; 
L40:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L43:    ifne L65 
L46:    aload_1 
L47:    new com/threerings/projectx/social/client/F 
L50:    dup 
L51:    aload_1 
L52:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L55:    invokespecial Method com/threerings/projectx/social/client/F <init> (Lcom/threerings/projectx/util/A;)V 
L58:    putfield Field com/threerings/projectx/client/aC afc Lcom/threerings/projectx/social/client/F; 
L61:    aload_1 
L62:    invokespecial Method com/threerings/projectx/client/aC vw ()V 

        .stack same 
L65:    return 
L66:    
        .linenumbertable 
            L0 651 
            L10 652 
            L27 654 
            L65 656 
        .end linenumbertable 
    .end code 
.end method 

.method public final uU : ()V 
    .code stack 5 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afd Lcom/threerings/projectx/social/client/k; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L27 
L10:    aload_0 
L11:    iconst_1 
L12:    anewarray com/threerings/opengl/gui/aE 
L15:    dup 
L16:    iconst_0 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/aC afd Lcom/threerings/projectx/social/client/k; 
L21:    aastore 
L22:    invokespecial Method com/threerings/projectx/client/aC a ([Lcom/threerings/opengl/gui/aE;)Z 
L25:    pop 
L26:    return 

        .stack same 
L27:    aload_0 
L28:    invokespecial Method com/threerings/projectx/client/aC vu ()V 

        .stack same 
L31:    return 
L32:    
        .linenumbertable 
            L0 663 
            L10 664 
            L27 666 
            L31 668 
        .end linenumbertable 
    .end code 
.end method 

.method public final uV : ()V 
    .code stack 5 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afe Lcom/threerings/projectx/client/UplinkWindow; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L27 
L10:    aload_0 
L11:    iconst_1 
L12:    anewarray com/threerings/opengl/gui/aE 
L15:    dup 
L16:    iconst_0 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/aC afe Lcom/threerings/projectx/client/UplinkWindow; 
L21:    aastore 
L22:    invokespecial Method com/threerings/projectx/client/aC a ([Lcom/threerings/opengl/gui/aE;)Z 
L25:    pop 
L26:    return 

        .stack same 
L27:    aload_0 
L28:    getstatic Field com/threerings/projectx/client/UplinkWindow$Tab MAIL Lcom/threerings/projectx/client/UplinkWindow$Tab; 
L31:    invokevirtual Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/client/UplinkWindow$Tab;)V 

        .stack same 
L34:    return 
L35:    
        .linenumbertable 
            L0 675 
            L10 676 
            L27 678 
            L34 680 
        .end linenumbertable 
    .end code 
.end method 

.method public final uW : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L4:     invokeinterface InterfaceMethod com/threerings/projectx/util/A uk ()Lcom/threerings/projectx/data/PlayerObject; 1 
L9:     getfield Field com/threerings/projectx/data/PlayerObject sceneDialog Lcom/threerings/projectx/data/DialogInfo; 
L12:    instanceof com/threerings/projectx/exchange/data/DepotDialogInfo 
L15:    ifeq L29 
L18:    aload_0 
L19:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L22:    aconst_null 
L23:    invokeinterface InterfaceMethod com/threerings/projectx/util/A b (Lcom/threerings/projectx/data/DialogInfo;)V 2 
L28:    return 

        .stack same 
L29:    aload_0 
L30:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L33:    aconst_null 
L34:    invokestatic Method com/threerings/projectx/exchange/data/DepotDialogInfo c (Lcom/threerings/projectx/util/A;Ljava/lang/String;)V 

        .stack same 
L37:    return 
L38:    
        .linenumbertable 
            L0 688 
            L18 689 
            L29 691 
            L37 694 
        .end linenumbertable 
    .end code 
.end method 

.method public static uX : ()V 
    .code stack 1 locals 0 
L0:     invokestatic Method com/threerings/projectx/client/ProjectXPrefs xV ()Z 
L3:     ifne L10 
L6:     iconst_1 
L7:     goto L11 

        .stack same 
L10:    iconst_0 

        .stack stack_1 Integer 
L11:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs aF (Z)V 
L14:    return 
L15:    
        .linenumbertable 
            L0 701 
            L14 702 
        .end linenumbertable 
    .end code 
.end method 

.method public final uY : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L4:     iconst_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/a aW (Z)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 709 
            L8 710 
        .end linenumbertable 
    .end code 
.end method 

.method public final uZ : ()V 
    .code stack 5 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L27 
L10:    aload_0 
L11:    iconst_1 
L12:    anewarray com/threerings/opengl/gui/aE 
L15:    dup 
L16:    iconst_0 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 
L21:    aastore 
L22:    invokespecial Method com/threerings/projectx/client/aC a ([Lcom/threerings/opengl/gui/aE;)Z 
L25:    pop 
L26:    return 

        .stack same 
L27:    aload_0 
L28:    invokevirtual Method com/threerings/projectx/client/aC vb ()V 

        .stack same 
L31:    return 
L32:    
        .linenumbertable 
            L0 717 
            L10 718 
            L27 720 
            L31 722 
        .end linenumbertable 
    .end code 
.end method 

.method public final va : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 
L4:     ifnull L14 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 
L11:    invokevirtual Method com/threerings/projectx/mission/client/u Jt ()V 

        .stack same 
L14:    return 
L15:    
        .linenumbertable 
            L0 729 
            L7 730 
            L14 732 
        .end linenumbertable 
    .end code 
.end method 

.method public final vb : ()V 
    .code stack 5 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L4:     iconst_0 
L5:     invokevirtual Method com/threerings/projectx/client/hud/a aW (Z)V 
L8:     aload_0 
L9:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L12:    invokestatic Method com/threerings/projectx/mission/client/MissionPanel isEnabled (Lcom/threerings/projectx/util/A;)Z 
L15:    ifeq L51 
L18:    aload_0 
L19:    invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L22:    ifeq L51 
L25:    aload_0 
L26:    getfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 
L29:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L32:    ifne L51 
L35:    aload_0 
L36:    new com/threerings/projectx/mission/client/u 
L39:    dup 
L40:    aload_0 
L41:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L44:    aload_0 
L45:    invokespecial Method com/threerings/projectx/mission/client/u <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/aC;)V 
L48:    putfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 

        .stack same 
L51:    return 
L52:    
        .linenumbertable 
            L0 739 
            L8 740 
            L25 741 
            L35 742 
            L51 745 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Lcom/threerings/projectx/mission/client/MissionPanel$Tab;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC vb ()V 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 
L8:     ifnull L19 
L11:    aload_0 
L12:    getfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 
L15:    aload_1 
L16:    invokevirtual Method com/threerings/projectx/mission/client/u b (Lcom/threerings/projectx/mission/client/MissionPanel$Tab;)V 

        .stack same 
L19:    return 
L20:    
        .linenumbertable 
            L0 752 
            L4 753 
            L11 754 
            L19 756 
        .end linenumbertable 
    .end code 
.end method 

.method public final cf : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC vb ()V 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 
L8:     ifnull L19 
L11:    aload_0 
L12:    getfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 
L15:    aload_1 
L16:    invokevirtual Method com/threerings/projectx/mission/client/u db (Ljava/lang/String;)V 

        .stack same 
L19:    return 
L20:    
        .linenumbertable 
            L0 763 
            L4 764 
            L11 765 
            L19 767 
        .end linenumbertable 
    .end code 
.end method 

.method public final vc : ()V 
    .code stack 5 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afg Lcom/threerings/projectx/client/HelpWindow; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L27 
L10:    aload_0 
L11:    iconst_1 
L12:    anewarray com/threerings/opengl/gui/aE 
L15:    dup 
L16:    iconst_0 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/aC afg Lcom/threerings/projectx/client/HelpWindow; 
L21:    aastore 
L22:    invokespecial Method com/threerings/projectx/client/aC a ([Lcom/threerings/opengl/gui/aE;)Z 
L25:    pop 
L26:    return 

        .stack same 
L27:    aload_0 
L28:    dup 
L29:    astore_1 
L30:    getstatic Field com/threerings/projectx/client/HelpWindow$Tab CONTROLS Lcom/threerings/projectx/client/HelpWindow$Tab; 
L33:    invokespecial Method com/threerings/projectx/client/aC b (Lcom/threerings/projectx/client/HelpWindow$Tab;)V 

        .stack same 
L36:    return 
L37:    
        .linenumbertable 
            L0 774 
            L10 775 
            L27 777 
            L36 779 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Lcom/threerings/projectx/data/PlayerEquipment;)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     aconst_null 
L3:     invokespecial Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/data/PlayerEquipment;Lcom/threerings/projectx/client/LoadoutPanel$Tab;)V 
L6:     return 
L7:     
        .linenumbertable 
            L0 786 
            L6 787 
        .end linenumbertable 
    .end code 
.end method 

.method public final L : (J)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getstatic Field com/threerings/projectx/client/UplinkWindow$Tab MAIL Lcom/threerings/projectx/client/UplinkWindow$Tab; 
L4:     invokevirtual Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/client/UplinkWindow$Tab;)V 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC afe Lcom/threerings/projectx/client/UplinkWindow; 
L11:    lload_1 
L12:    invokevirtual Method com/threerings/projectx/client/UplinkWindow L (J)V 
L15:    return 
L16:    
        .linenumbertable 
            L0 794 
            L7 795 
            L15 796 
        .end linenumbertable 
    .end code 
.end method 

.method public final h : (Lcom/threerings/util/Name;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getstatic Field com/threerings/projectx/client/UplinkWindow$Tab MAIL Lcom/threerings/projectx/client/UplinkWindow$Tab; 
L4:     invokevirtual Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/client/UplinkWindow$Tab;)V 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC afe Lcom/threerings/projectx/client/UplinkWindow; 
L11:    aload_1 
L12:    invokevirtual Method com/threerings/projectx/client/UplinkWindow h (Lcom/threerings/util/Name;)V 
L15:    return 
L16:    
        .linenumbertable 
            L0 803 
            L7 804 
            L15 805 
        .end linenumbertable 
    .end code 
.end method 

.method protected vd : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L4:     invokeinterface InterfaceMethod com/threerings/projectx/util/A uk ()Lcom/threerings/projectx/data/PlayerObject; 1 
L9:     getfield Field com/threerings/projectx/data/PlayerObject sceneDialog Lcom/threerings/projectx/data/DialogInfo; 
L12:    ifnonnull L48 
L15:    aload_0 
L16:    getfield Field com/threerings/projectx/client/aC afj Lcom/threerings/projectx/client/eW; 
L19:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L22:    ifne L48 
L25:    invokestatic Method com/threerings/projectx/util/a Ni ()Z 
L28:    ifeq L38 
L31:    aload_0 
L32:    getstatic Field com/threerings/projectx/client/UplinkWindow$Tab NEWS Lcom/threerings/projectx/client/UplinkWindow$Tab; 
L35:    invokevirtual Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/client/UplinkWindow$Tab;)V 

        .stack same 
L38:    invokestatic Method com/threerings/projectx/util/a MP ()Z 
L41:    ifne L48 
L44:    aload_0 
L45:    invokespecial Method com/threerings/projectx/client/aC vu ()V 

        .stack same 
L48:    return 
L49:    
        .linenumbertable 
            L0 812 
            L25 813 
            L31 814 
            L38 816 
            L44 817 
            L48 820 
        .end linenumbertable 
    .end code 
.end method 

.method public final ve : ()V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afm Lcom/threerings/projectx/client/fp; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L23 
L10:    aload_0 
L11:    getfield Field com/threerings/projectx/client/aC afm Lcom/threerings/projectx/client/fp; 
L14:    invokevirtual Method com/threerings/projectx/client/fp dismiss ()V 
L17:    aload_0 
L18:    aconst_null 
L19:    putfield Field com/threerings/projectx/client/aC afm Lcom/threerings/projectx/client/fp; 
L22:    return 

        .stack same 
L23:    aload_0 
L24:    dup 
L25:    astore_1 
L26:    invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L29:    ifeq L47 
L32:    aload_1 
L33:    new com/threerings/projectx/client/fp 
L36:    dup 
L37:    aload_1 
L38:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L41:    invokespecial Method com/threerings/projectx/client/fp <init> (Lcom/threerings/projectx/util/A;)V 
L44:    putfield Field com/threerings/projectx/client/aC afm Lcom/threerings/projectx/client/fp; 

        .stack same 
L47:    return 
L48:    
        .linenumbertable 
            L0 827 
            L10 828 
            L17 829 
            L23 831 
            L47 833 
        .end linenumbertable 
    .end code 
.end method 

.method public final vf : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getstatic Field com/threerings/projectx/client/HelpWindow$Tab CONTROLS Lcom/threerings/projectx/client/HelpWindow$Tab; 
L4:     invokespecial Method com/threerings/projectx/client/aC b (Lcom/threerings/projectx/client/HelpWindow$Tab;)V 
L7:     return 
L8:     
        .linenumbertable 
            L0 840 
            L7 841 
        .end linenumbertable 
    .end code 
.end method 

.method public final vg : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getstatic Field com/threerings/projectx/client/HelpWindow$Tab SUPPORT Lcom/threerings/projectx/client/HelpWindow$Tab; 
L4:     invokespecial Method com/threerings/projectx/client/aC b (Lcom/threerings/projectx/client/HelpWindow$Tab;)V 
L7:     return 
L8:     
        .linenumbertable 
            L0 848 
            L7 849 
        .end linenumbertable 
    .end code 
.end method 

.method public final b : (Ljava/lang/Object;J)V 
    .code stack 4 locals 4 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afw Lcom/threerings/projectx/client/hud/s; 
L4:     aload_1 
L5:     lload_2 
L6:     invokevirtual Method com/threerings/projectx/client/hud/s b (Ljava/lang/Object;J)V 
L9:     return 
L10:    
        .linenumbertable 
            L0 856 
            L9 857 
        .end linenumbertable 
    .end code 
.end method 

.method public final aR : (Ljava/lang/Object;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afw Lcom/threerings/projectx/client/hud/s; 
L4:     aload_1 
L5:     invokevirtual Method com/threerings/projectx/client/hud/s aR (Ljava/lang/Object;)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 864 
            L8 865 
        .end linenumbertable 
    .end code 
.end method 

.method public final vh : ()Z 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     aload_0 
L2:     iconst_1 
L3:     invokevirtual Method com/threerings/projectx/client/aC ao (Z)[Lcom/threerings/opengl/gui/aE; 
L6:     invokespecial Method com/threerings/projectx/client/aC a ([Lcom/threerings/opengl/gui/aE;)Z 
L9:     ireturn 
L10:    
        .linenumbertable 
            L0 874 
        .end linenumbertable 
    .end code 
.end method 

.method public final vi : ()Z 
    .code stack 5 locals 5 
L0:     aload_0 
L1:     aload_0 
L2:     astore_1 
L3:     bipush 7 
L5:     anewarray com/threerings/opengl/gui/aE 
L8:     dup 
L9:     iconst_0 
L10:    aload_1 
L11:    getfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 
L14:    aastore 
L15:    dup 
L16:    iconst_1 
L17:    aload_1 
L18:    getfield Field com/threerings/projectx/client/aC afk Lcom/threerings/projectx/craft/a/z; 
L21:    aastore 
L22:    dup 
L23:    iconst_2 
L24:    aload_1 
L25:    getfield Field com/threerings/projectx/client/aC afm Lcom/threerings/projectx/client/fp; 
L28:    aastore 
L29:    dup 
L30:    iconst_3 
L31:    aload_1 
L32:    getfield Field com/threerings/projectx/client/aC afe Lcom/threerings/projectx/client/UplinkWindow; 
L35:    aastore 
L36:    dup 
L37:    iconst_4 
L38:    aload_1 
L39:    getfield Field com/threerings/projectx/client/aC afg Lcom/threerings/projectx/client/HelpWindow; 
L42:    aastore 
L43:    dup 
L44:    iconst_5 
L45:    aload_1 
L46:    getfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 
L49:    aastore 
L50:    dup 
L51:    bipush 6 
L53:    aload_1 
L54:    getfield Field com/threerings/projectx/client/aC afh Lcom/threerings/projectx/sprites/a/l; 
L57:    aastore 
L58:    astore_2 
L59:    astore_1 
L60:    aload_2 
L61:    dup 
L62:    astore_1 
L63:    arraylength 
L64:    istore_2 
L65:    iconst_0 
L66:    istore_3 
L67:    iload_3 
L68:    iload_2 
L69:    if_icmpge L92 
L72:    aload_1 
L73:    iload_3 
L74:    aaload 
L75:    dup 
L76:    astore 4 
L78:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L81:    ifeq L86 
L84:    iconst_1 
L85:    ireturn 
L86:    iinc 3 1 
L89:    goto L67 
L92:    iconst_0 
L93:    ireturn 
L94:    
        .linenumbertable 
            L0 882 
        .end linenumbertable 
    .end code 
.end method 

.method public final saveState : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     dup 
L8:     putstatic Field com/threerings/projectx/client/aC afz Z 
L11:    ifeq L21 
L14:    aload_0 
L15:    getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L18:    invokevirtual Method com/threerings/projectx/item/client/f dismiss ()V 

        .stack same 
L21:    return 
L22:    
        .linenumbertable 
            L0 890 
            L14 891 
            L21 893 
        .end linenumbertable 
    .end code 
.end method 

.method public final restoreState : ()V 
    .code stack 1 locals 1 
L0:     getstatic Field com/threerings/projectx/client/aC afz Z 
L3:     ifeq L10 
L6:     aload_0 
L7:     invokespecial Method com/threerings/projectx/client/aC vt ()V 

        .stack same 
L10:    return 
L11:    
        .linenumbertable 
            L0 900 
            L6 901 
            L10 903 
        .end linenumbertable 
    .end code 
.end method 

.method public vj : ()I 
    .code stack 4 locals 1 
L0:     sipush 300 
L3:     sipush 750 
L6:     aload_0 
L7:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L10:    invokeinterface InterfaceMethod com/threerings/projectx/util/A xa ()Lcom/threerings/projectx/client/eh; 1 
L15:    invokevirtual Method com/threerings/projectx/client/eh getDisplayWidth ()I 
L18:    iconst_2 
L19:    idiv 
L20:    bipush 50 
L22:    isub 
L23:    invokestatic Method java/lang/Math min (II)I 
L26:    invokestatic Method java/lang/Math max (II)I 
L29:    ireturn 
L30:    
        .linenumbertable 
            L0 910 
        .end linenumbertable 
    .end code 
.end method 

.method public final h : (Lcom/threerings/config/ConfigReference;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aeX Lcom/threerings/projectx/client/hud/q; 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC aeX Lcom/threerings/projectx/client/hud/q; 
L11:    aload_1 
L12:    invokevirtual Method com/threerings/projectx/client/hud/q h (Lcom/threerings/config/ConfigReference;)V 

        .stack same 
L15:    return 
L16:    
        .linenumbertable 
            L0 919 
            L7 920 
            L15 922 
        .end linenumbertable 
    .end code 
    .signature (Lcom/threerings/config/ConfigReference<Lcom/threerings/projectx/config/DescriptionConfig;>;)V 
.end method 

.method public final fl : ()Lcom/samskivert/swing/c; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC acf Lcom/threerings/projectx/client/et; 
L4:     invokevirtual Method com/threerings/projectx/client/et Of ()Lcom/threerings/tudey/a/a; 
L7:     areturn 
L8:     
        .linenumbertable 
            L0 927 
        .end linenumbertable 
    .end code 
.end method 

.method public final vk : ()Lcom/threerings/projectx/client/et; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC acf Lcom/threerings/projectx/client/et; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 932 
        .end linenumbertable 
    .end code 
.end method 

.method public final b : (Lcom/threerings/presents/dobj/DEvent;)V 
    .code stack 2 locals 3 
L0:     aload_1 
L1:     instanceof com/threerings/presents/dobj/NamedEvent 
L4:     ifeq L105 
L7:     aload_1 
L8:     checkcast com/threerings/presents/dobj/NamedEvent 
L11:    dup 
L12:    astore_1 
L13:    invokevirtual Method com/threerings/presents/dobj/NamedEvent getName ()Ljava/lang/String; 
L16:    astore_2 
L17:    ldc 'newMailInfo' 
L19:    aload_2 
L20:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L23:    ifne L35 
L26:    ldc 'gifts' 
L28:    aload_2 
L29:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L32:    ifeq L42 

        .stack append Object com/threerings/presents/dobj/NamedEvent Object java/lang/String 
L35:    aload_0 
L36:    invokespecial Method com/threerings/projectx/client/aC vy ()V 
L39:    goto L73 

        .stack same 
L42:    ldc 'items' 
L44:    aload_2 
L45:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L48:    ifne L69 
L51:    ldc 'sprites' 
L53:    aload_2 
L54:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L57:    ifne L69 
L60:    ldc 'equipPolicy' 
L62:    aload_2 
L63:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L66:    ifeq L73 

        .stack same 
L69:    aload_0 
L70:    invokespecial Method com/threerings/projectx/client/aC vC ()V 

        .stack same 
L73:    aload_0 
L74:    getfield Field com/threerings/projectx/client/aC aft Lcom/threerings/projectx/client/hud/y; 
L77:    aload_1 
L78:    invokevirtual Method com/threerings/projectx/client/hud/y b (Lcom/threerings/presents/dobj/NamedEvent;)V 
L81:    aload_0 
L82:    getfield Field com/threerings/projectx/client/aC afs Lcom/threerings/projectx/client/hud/U; 
L85:    aload_1 
L86:    invokevirtual Method com/threerings/projectx/client/hud/U b (Lcom/threerings/presents/dobj/NamedEvent;)V 
L89:    aload_0 
L90:    getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L93:    aload_1 
L94:    invokevirtual Method com/threerings/projectx/client/hud/a b (Lcom/threerings/presents/dobj/NamedEvent;)V 
L97:    aload_0 
L98:    getfield Field com/threerings/projectx/client/aC afv Lcom/threerings/projectx/client/hud/J; 
L101:   aload_1 
L102:   invokevirtual Method com/threerings/projectx/client/hud/J b (Lcom/threerings/presents/dobj/NamedEvent;)V 

        .stack chop 2 
L105:   return 
L106:   
        .linenumbertable 
            L0 938 
            L7 939 
            L12 940 
            L17 942 
            L35 943 
            L42 944 
            L69 946 
            L73 949 
            L81 950 
            L89 951 
            L97 952 
            L105 954 
        .end linenumbertable 
    .end code 
.end method 

.method public final b : (Lcom/threerings/util/Name;Z)V 
    .code stack 1 locals 3 
L0:     aload_0 
L1:     invokespecial Method com/threerings/projectx/client/aC vy ()V 
L4:     return 
L5:     
        .linenumbertable 
            L0 959 
            L4 960 
        .end linenumbertable 
    .end code 
.end method 

.method public getHitComponent : (II)Lcom/threerings/opengl/gui/q; 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     iload_1 
L2:     iload_2 
L3:     invokespecial Method com/threerings/opengl/gui/aj getHitComponent (II)Lcom/threerings/opengl/gui/q; 
L6:     dup 
L7:     astore_1 
L8:     ifnull L33 
L11:    aload_1 
L12:    invokevirtual Method com/threerings/opengl/gui/q getWidth ()I 
L15:    aload_0 
L16:    getfield Field com/threerings/projectx/client/aC _width I 
L19:    if_icmpne L35 
L22:    aload_1 
L23:    invokevirtual Method com/threerings/opengl/gui/q getHeight ()I 
L26:    aload_0 
L27:    getfield Field com/threerings/projectx/client/aC _height I 
L30:    if_icmpne L35 

        .stack append Object com/threerings/opengl/gui/q 
L33:    aconst_null 
L34:    areturn 

        .stack same 
L35:    aload_1 

        .stack stack_1 Object com/threerings/opengl/gui/q 
L36:    areturn 
L37:    
        .linenumbertable 
            L0 966 
            L7 967 
        .end linenumbertable 
    .end code 
.end method 

.method public a : (Lcom/threerings/projectx/client/en;)V 
    .code stack 5 locals 2 
L0:     aload_1 
L1:     getstatic Field com/threerings/projectx/client/Command TOGGLE_ARSENAL Lcom/threerings/projectx/client/Command; 
L4:     new com/threerings/projectx/client/aO 
L7:     dup 
L8:     aload_0 
L9:     invokespecial Method com/threerings/projectx/client/aO <init> (Lcom/threerings/projectx/client/aC;)V 
L12:    invokevirtual Method com/threerings/projectx/client/en a (Lcom/threerings/projectx/client/Command;Lcom/threerings/opengl/gui/e/f$b;)V 
L15:    aload_1 
L16:    getstatic Field com/threerings/projectx/client/Command TOGGLE_FORGE Lcom/threerings/projectx/client/Command; 
L19:    new com/threerings/projectx/client/aP 
L22:    dup 
L23:    aload_0 
L24:    invokespecial Method com/threerings/projectx/client/aP <init> (Lcom/threerings/projectx/client/aC;)V 
L27:    invokevirtual Method com/threerings/projectx/client/en a (Lcom/threerings/projectx/client/Command;Lcom/threerings/opengl/gui/e/f$b;)V 
L30:    aload_1 
L31:    getstatic Field com/threerings/projectx/client/Command TOGGLE_RECIPES Lcom/threerings/projectx/client/Command; 
L34:    new com/threerings/projectx/client/aQ 
L37:    dup 
L38:    aload_0 
L39:    invokespecial Method com/threerings/projectx/client/aQ <init> (Lcom/threerings/projectx/client/aC;)V 
L42:    invokevirtual Method com/threerings/projectx/client/en a (Lcom/threerings/projectx/client/Command;Lcom/threerings/opengl/gui/e/f$b;)V 
L45:    aload_1 
L46:    getstatic Field com/threerings/projectx/client/Command TOGGLE_SOCIAL Lcom/threerings/projectx/client/Command; 
L49:    new com/threerings/projectx/client/aR 
L52:    dup 
L53:    aload_0 
L54:    invokespecial Method com/threerings/projectx/client/aR <init> (Lcom/threerings/projectx/client/aC;)V 
L57:    invokevirtual Method com/threerings/projectx/client/en a (Lcom/threerings/projectx/client/Command;Lcom/threerings/opengl/gui/e/f$b;)V 
L60:    aload_1 
L61:    getstatic Field com/threerings/projectx/client/Command TOGGLE_FEED Lcom/threerings/projectx/client/Command; 
L64:    new com/threerings/projectx/client/aS 
L67:    dup 
L68:    aload_0 
L69:    invokespecial Method com/threerings/projectx/client/aS <init> (Lcom/threerings/projectx/client/aC;)V 
L72:    invokevirtual Method com/threerings/projectx/client/en a (Lcom/threerings/projectx/client/Command;Lcom/threerings/opengl/gui/e/f$b;)V 
L75:    aload_1 
L76:    getstatic Field com/threerings/projectx/client/Command TOGGLE_MISSION Lcom/threerings/projectx/client/Command; 
L79:    new com/threerings/projectx/client/aT 
L82:    dup 
L83:    aload_0 
L84:    invokespecial Method com/threerings/projectx/client/aT <init> (Lcom/threerings/projectx/client/aC;)V 
L87:    invokevirtual Method com/threerings/projectx/client/en a (Lcom/threerings/projectx/client/Command;Lcom/threerings/opengl/gui/e/f$b;)V 
L90:    aload_1 
L91:    getstatic Field com/threerings/projectx/client/Command TOGGLE_DEPOT Lcom/threerings/projectx/client/Command; 
L94:    new com/threerings/projectx/client/aU 
L97:    dup 
L98:    aload_0 
L99:    invokespecial Method com/threerings/projectx/client/aU <init> (Lcom/threerings/projectx/client/aC;)V 
L102:   invokevirtual Method com/threerings/projectx/client/en a (Lcom/threerings/projectx/client/Command;Lcom/threerings/opengl/gui/e/f$b;)V 
L105:   aload_1 
L106:   getstatic Field com/threerings/projectx/client/Command TOGGLE_CHARACTER Lcom/threerings/projectx/client/Command; 
L109:   new com/threerings/projectx/client/aV 
L112:   dup 
L113:   aload_0 
L114:   invokespecial Method com/threerings/projectx/client/aV <init> (Lcom/threerings/projectx/client/aC;)V 
L117:   invokevirtual Method com/threerings/projectx/client/en a (Lcom/threerings/projectx/client/Command;Lcom/threerings/opengl/gui/e/f$b;)V 
L120:   aload_1 
L121:   getstatic Field com/threerings/projectx/client/Command TOGGLE_PROGRESS Lcom/threerings/projectx/client/Command; 
L124:   new com/threerings/projectx/client/aF 
L127:   dup 
L128:   aload_0 
L129:   invokespecial Method com/threerings/projectx/client/aF <init> (Lcom/threerings/projectx/client/aC;)V 
L132:   invokevirtual Method com/threerings/projectx/client/en a (Lcom/threerings/projectx/client/Command;Lcom/threerings/opengl/gui/e/f$b;)V 
L135:   aload_1 
L136:   getstatic Field com/threerings/projectx/client/Command TOGGLE_LOADOUT Lcom/threerings/projectx/client/Command; 
L139:   new com/threerings/projectx/client/aG 
L142:   dup 
L143:   aload_0 
L144:   invokespecial Method com/threerings/projectx/client/aG <init> (Lcom/threerings/projectx/client/aC;)V 
L147:   invokevirtual Method com/threerings/projectx/client/en a (Lcom/threerings/projectx/client/Command;Lcom/threerings/opengl/gui/e/f$b;)V 
L150:   aload_1 
L151:   getstatic Field com/threerings/projectx/client/Command TOGGLE_UPLINK Lcom/threerings/projectx/client/Command; 
L154:   new com/threerings/projectx/client/aH 
L157:   dup 
L158:   aload_0 
L159:   invokespecial Method com/threerings/projectx/client/aH <init> (Lcom/threerings/projectx/client/aC;)V 
L162:   invokevirtual Method com/threerings/projectx/client/en a [u723] 
L165:   aload_1 
L166:   getstatic Field com/threerings/projectx/client/Command TOGGLE_PANELS Lcom/threerings/projectx/client/Command; 
L169:   new com/threerings/projectx/client/aI 
L172:   dup 
L173:   aload_0 
L174:   invokespecial Method com/threerings/projectx/client/aI <init> (Lcom/threerings/projectx/client/aC;)V 
L177:   invokevirtual Method com/threerings/projectx/client/en a [u723] 
L180:   aload_1 
L181:   getstatic Field com/threerings/projectx/client/Command TOGGLE_HELP Lcom/threerings/projectx/client/Command; 
L184:   new com/threerings/projectx/client/aJ 
L187:   dup 
L188:   aload_0 
L189:   invokespecial Method com/threerings/projectx/client/aJ <init> (Lcom/threerings/projectx/client/aC;)V 
L192:   invokevirtual Method com/threerings/projectx/client/en a [u723] 
L195:   aload_1 
L196:   getstatic Field com/threerings/projectx/client/Command TOGGLE_BATTLE_SPRITE Lcom/threerings/projectx/client/Command; 
L199:   new com/threerings/projectx/client/aK 
L202:   dup 
L203:   aload_0 
L204:   invokespecial Method com/threerings/projectx/client/aK <init> (Lcom/threerings/projectx/client/aC;)V 
L207:   invokevirtual Method com/threerings/projectx/client/en a [u723] 
L210:   aload_1 
L211:   getstatic Field com/threerings/projectx/client/Command TOGGLE_MAP Lcom/threerings/projectx/client/Command; 
L214:   new com/threerings/projectx/client/aL 
L217:   dup 
L218:   aload_0 
L219:   invokespecial Method com/threerings/projectx/client/aL <init> (Lcom/threerings/projectx/client/aC;)V 
L222:   invokevirtual Method com/threerings/projectx/client/en a [u723] 
L225:   aload_0 
L226:   getfield Field com/threerings/projectx/client/aC afs Lcom/threerings/projectx/client/hud/U; 
L229:   invokevirtual Method com/threerings/projectx/client/hud/U zE ()V 
L232:   aload_0 
L233:   getfield Field com/threerings/projectx/client/aC aft Lcom/threerings/projectx/client/hud/y; 
L236:   invokevirtual Method com/threerings/projectx/client/hud/y zE ()V 
L239:   aload_1 
L240:   getstatic Field com/threerings/projectx/client/Command TOGGLE_CONTROLLER_MODE Lcom/threerings/projectx/client/Command; 
L243:   new com/threerings/projectx/client/aM 
L246:   dup 
L247:   aload_0 
L248:   invokespecial Method com/threerings/projectx/client/aM <init> (Lcom/threerings/projectx/client/aC;)V 
L251:   invokevirtual Method com/threerings/projectx/client/en a [u723] 
L254:   return 
L255:   
        .linenumbertable 
            L0 976 
            L15 981 
            L30 986 
            L45 991 
            L60 996 
            L75 1001 
            L90 1006 
            L105 1011 
            L120 1016 
            L135 1021 
            L150 1026 
            L165 1031 
            L180 1040 
            L195 1045 
            L210 1050 
            L225 1056 
            L232 1057 
            L239 1060 
            L254 1065 
        .end linenumbertable 
    .end code 
.end method 

.method protected final a : (Ljava/lang/String;Lcom/threerings/opengl/gui/q;Lcom/threerings/opengl/gui/d/b$a;)V 
    .code stack 3 locals 4 
L0:     aload_0 
L1:     aload_2 
L2:     aload_3 
L3:     invokevirtual Method com/threerings/projectx/client/aC add (Lcom/threerings/opengl/gui/q;Ljava/lang/Object;)V 
L6:     aload_0 
L7:     getfield Field com/threerings/projectx/client/aC afy Lcom/threerings/projectx/client/aC$a; 
L10:    aload_1 
L11:    aload_2 
L12:    invokevirtual Method com/threerings/projectx/client/aC$a registerComponent (Ljava/lang/String;Lcom/threerings/opengl/gui/q;)V 
L15:    return 
L16:    
        .linenumbertable 
            L0 1073 
            L6 1074 
            L15 1075 
        .end linenumbertable 
    .end code 
.end method 

.method protected wasAdded : ()V 
    .code stack 6 locals 4 
L0:     aload_0 
L1:     invokespecial Method com/threerings/opengl/gui/aj wasAdded ()V 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L8:     invokeinterface InterfaceMethod com/threerings/projectx/util/A uk ()Lcom/threerings/projectx/data/PlayerObject; 1 
L13:    aload_0 
L14:    invokevirtual Method com/threerings/projectx/data/PlayerObject d (Lcom/google/inject/a/a;)V 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L21:    invokeinterface InterfaceMethod com/threerings/projectx/util/A xc ()Lcom/threerings/crowd/chat/client/k; 1 
L26:    aload_0 
L27:    invokevirtual Method com/threerings/crowd/chat/client/k a (Lcom/threerings/crowd/chat/client/k$a;)V 
L30:    aload_0 
L31:    invokespecial Method com/threerings/projectx/client/aC vy ()V 
L34:    aload_0 
L35:    invokespecial Method com/threerings/projectx/client/aC vC ()V 
L38:    aload_0 
L39:    dup 
L40:    astore_1 
L41:    invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L44:    ifeq L117 
L47:    aload_1 
L48:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L51:    invokeinterface InterfaceMethod com/threerings/projectx/util/A uk ()Lcom/threerings/projectx/data/PlayerObject; 1 
L56:    getfield Field com/threerings/projectx/data/PlayerObject newMailInfo Lcom/threerings/presents/dobj/DSet; 
L59:    invokevirtual Method com/threerings/presents/dobj/DSet iterator ()Ljava/util/Iterator; 
L62:    astore_2 
L63:    aload_2 
L64:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L69:    ifeq L117 
L72:    aload_2 
L73:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L78:    checkcast com/threerings/projectx/uplink/data/NewMailInfo 
L81:    astore_3 
L82:    getstatic Field com/threerings/projectx/uplink/data/MailType RETENTION_GIFT Lcom/threerings/projectx/uplink/data/MailType; 
L85:    aload_3 
L86:    getfield Field com/threerings/projectx/uplink/data/NewMailInfo type Lcom/threerings/projectx/uplink/data/MailType; 
L89:    if_acmpne L114 
L92:    aload_1 
L93:    new com/threerings/projectx/client/eW 
L96:    dup 
L97:    aload_1 
L98:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L101:   aload_3 
L102:   getfield Field com/threerings/projectx/uplink/data/NewMailInfo id J 
L105:   invokespecial Method com/threerings/projectx/client/eW <init> (Lcom/threerings/projectx/util/A;J)V 
L108:   putfield Field com/threerings/projectx/client/aC afj Lcom/threerings/projectx/client/eW; 
L111:   goto L117 
L114:   goto L63 
L117:   aload_0 
L118:   getfield Field com/threerings/projectx/client/aC acf Lcom/threerings/projectx/client/et; 
L121:   invokevirtual Method com/threerings/projectx/client/et Oh ()Lcom/threerings/opengl/gui/aE; 
L124:   aload_0 
L125:   getfield Field com/threerings/projectx/client/aC afr Lcom/threerings/opengl/gui/event/e; 
L128:   invokevirtual Method com/threerings/opengl/gui/aE addListener$2eebd3b8 (Lcom/google/inject/a/a;)V 
L131:   aload_0 
L132:   getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L135:   invokeinterface InterfaceMethod com/threerings/projectx/util/A xp ()Lcom/google/common/eventbus/g; 1 
L140:   aload_0 
L141:   invokevirtual Method com/google/common/eventbus/g r (Ljava/lang/Object;)V 
L144:   aload_0 
L145:   aconst_null 
L146:   invokevirtual Method com/threerings/projectx/client/aC rereadPrefs (Lcom/threerings/projectx/client/ProjectXPrefs$c;)V 
L149:   return 
L150:   
        .linenumbertable 
            L0 1080 
            L4 1082 
            L17 1083 
            L30 1084 
            L34 1085 
            L38 1086 
            L117 1088 
            L131 1089 
            L144 1090 
            L149 1091 
        .end linenumbertable 
    .end code 
.end method 

.method protected wasRemoved : ()V 
    .code stack 3 locals 5 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L4:     invokeinterface InterfaceMethod com/threerings/projectx/util/A xp ()Lcom/google/common/eventbus/g; 1 
L9:     aload_0 
L10:    invokevirtual Method com/google/common/eventbus/g s (Ljava/lang/Object;)V 
L13:    aload_0 
L14:    invokespecial Method com/threerings/opengl/gui/aj wasRemoved ()V 
L17:    aload_0 
L18:    aload_0 
L19:    iconst_1 
L20:    invokevirtual Method com/threerings/projectx/client/aC ao (Z)[Lcom/threerings/opengl/gui/aE; 
L23:    astore_2 
L24:    astore_1 
L25:    aload_2 
L26:    dup 
L27:    astore_1 
L28:    arraylength 
L29:    istore_2 
L30:    iconst_0 
L31:    istore_3 
L32:    iload_3 
L33:    iload_2 
L34:    if_icmpge L60 
L37:    aload_1 
L38:    iload_3 
L39:    aaload 
L40:    dup 
L41:    astore 4 
L43:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L46:    ifeq L54 
L49:    aload 4 
L51:    invokevirtual Method com/threerings/opengl/gui/aE dismiss ()V 
L54:    iinc 3 1 
L57:    goto L32 
L60:    aload_0 
L61:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L64:    invokeinterface InterfaceMethod com/threerings/projectx/util/A uk ()Lcom/threerings/projectx/data/PlayerObject; 1 
L69:    aload_0 
L70:    invokevirtual Method com/threerings/projectx/data/PlayerObject e (Lcom/google/inject/a/a;)V 
L73:    aload_0 
L74:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L77:    invokeinterface InterfaceMethod com/threerings/projectx/util/A xc ()Lcom/threerings/crowd/chat/client/k; 1 
L82:    ifnull L98 
L85:    aload_0 
L86:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L89:    invokeinterface InterfaceMethod com/threerings/projectx/util/A xc ()Lcom/threerings/crowd/chat/client/k; 1 
L94:    aload_0 
L95:    invokevirtual Method com/threerings/crowd/chat/client/k b (Lcom/threerings/crowd/chat/client/k$a;)V 

        .stack same_extended 
L98:    aload_0 
L99:    getfield Field com/threerings/projectx/client/aC acf Lcom/threerings/projectx/client/et; 
L102:   invokevirtual Method com/threerings/projectx/client/et Oh ()Lcom/threerings/opengl/gui/aE; 
L105:   aload_0 
L106:   getfield Field com/threerings/projectx/client/aC afr Lcom/threerings/opengl/gui/event/e; 
L109:   invokevirtual Method com/threerings/opengl/gui/aE removeListener$2eebd3b4 (Lcom/google/inject/a/a;)Z 
L112:   pop 
L113:   return 
L114:   
        .linenumbertable 
            L0 1096 
            L13 1097 
            L17 1098 
            L60 1100 
            L73 1101 
            L85 1102 
            L98 1105 
            L113 1106 
        .end linenumbertable 
    .end code 
.end method 

.method protected renderComponent : (Lcom/threerings/opengl/renderer/Renderer;)V 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afo Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List size ()I 1 
L9:     iconst_1 
L10:    isub 
L11:    istore_2 

        .stack append Integer 
L12:    iload_2 
L13:    iflt L52 
L16:    aload_0 
L17:    getfield Field com/threerings/projectx/client/aC afo Ljava/util/List; 
L20:    iload_2 
L21:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L26:    checkcast com/threerings/projectx/client/ui/c 
L29:    invokevirtual Method com/threerings/projectx/client/ui/c update ()Z 
L32:    ifne L46 
L35:    aload_0 
L36:    getfield Field com/threerings/projectx/client/aC afo Ljava/util/List; 
L39:    iload_2 
L40:    invokeinterface InterfaceMethod java/util/List remove (I)Ljava/lang/Object; 2 
L45:    pop 

        .stack same 
L46:    iinc 2 -1 
L49:    goto L12 

        .stack chop 1 
L52:    aload_0 
L53:    getfield Field com/threerings/projectx/client/aC afo Ljava/util/List; 
L56:    invokestatic Method com/samskivert/util/ac sort (Ljava/util/List;)V 
L59:    iconst_0 
L60:    istore_2 
L61:    aload_0 
L62:    getfield Field com/threerings/projectx/client/aC afo Ljava/util/List; 
L65:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L70:    istore_3 

        .stack append Integer Integer 
L71:    iload_2 
L72:    iload_3 
L73:    if_icmpge L99 
L76:    aload_0 
L77:    getfield Field com/threerings/projectx/client/aC afo Ljava/util/List; 
L80:    iload_2 
L81:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L86:    checkcast com/threerings/projectx/client/ui/c 
L89:    aload_1 
L90:    invokevirtual Method com/threerings/projectx/client/ui/c render (Lcom/threerings/opengl/renderer/Renderer;)V 
L93:    iinc 2 1 
L96:    goto L71 

        .stack chop 2 
L99:    aload_0 
L100:   aload_1 
L101:   invokespecial Method com/threerings/opengl/gui/aj renderComponent (Lcom/threerings/opengl/renderer/Renderer;)V 
L104:   return 
L105:   
        .linenumbertable 
            L0 1112 
            L16 1113 
            L35 1114 
            L46 1112 
            L52 1117 
            L59 1118 
            L76 1119 
            L93 1118 
            L99 1121 
            L104 1122 
        .end linenumbertable 
    .end code 
.end method 

.method protected vl : ()V 
    .code stack 6 locals 1 
L0:     aload_0 
L1:     aload_0 
L2:     getfield Field com/threerings/projectx/client/aC acf Lcom/threerings/projectx/client/et; 
L5:     invokevirtual Method com/threerings/projectx/client/et yJ ()Lcom/threerings/projectx/client/hud/Minimap; 
L8:     putfield Field com/threerings/projectx/client/aC aeW Lcom/threerings/projectx/client/hud/Minimap; 
L11:    aload_0 
L12:    aload_0 
L13:    invokevirtual Method com/threerings/projectx/client/aC vn ()Lcom/threerings/projectx/client/hud/K; 
L16:    putfield Field com/threerings/projectx/client/aC afn Lcom/threerings/projectx/client/hud/K; 
L19:    aload_0 
L20:    aload_0 
L21:    invokevirtual Method com/threerings/projectx/client/aC vo ()Lcom/threerings/projectx/client/hud/q; 
L24:    putfield Field com/threerings/projectx/client/aC aeX Lcom/threerings/projectx/client/hud/q; 
L27:    aload_0 
L28:    new com/threerings/projectx/client/hud/U 
L31:    dup 
L32:    aload_0 
L33:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L36:    aload_0 
L37:    invokespecial Method com/threerings/projectx/client/hud/U <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/aC;)V 
L40:    putfield Field com/threerings/projectx/client/aC afs Lcom/threerings/projectx/client/hud/U; 
L43:    aload_0 
L44:    new com/threerings/projectx/client/hud/y 
L47:    dup 
L48:    aload_0 
L49:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L52:    aload_0 
L53:    invokespecial Method com/threerings/projectx/client/hud/y <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/aC;)V 
L56:    putfield Field com/threerings/projectx/client/aC aft Lcom/threerings/projectx/client/hud/y; 
L59:    aload_0 
L60:    getfield Field com/threerings/projectx/client/aC afs Lcom/threerings/projectx/client/hud/U; 
L63:    aload_0 
L64:    getfield Field com/threerings/projectx/client/aC aft Lcom/threerings/projectx/client/hud/y; 
L67:    invokevirtual Method com/threerings/projectx/client/hud/U a (Lcom/threerings/projectx/client/hud/Q;)V 
L70:    aload_0 
L71:    getfield Field com/threerings/projectx/client/aC aft Lcom/threerings/projectx/client/hud/y; 
L74:    aload_0 
L75:    getfield Field com/threerings/projectx/client/aC afs Lcom/threerings/projectx/client/hud/U; 
L78:    invokevirtual Method com/threerings/projectx/client/hud/y a (Lcom/threerings/projectx/client/hud/Q;)V 
L81:    aload_0 
L82:    new com/threerings/projectx/client/hud/a 
L85:    dup 
L86:    aload_0 
L87:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L90:    aload_0 
L91:    invokespecial Method com/threerings/projectx/client/hud/a <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/aC;)V 
L94:    putfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L97:    aload_0 
L98:    new com/threerings/projectx/client/hud/J 
L101:   dup 
L102:   aload_0 
L103:   getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L106:   aload_0 
L107:   aload_0 
L108:   getfield Field com/threerings/projectx/client/aC afu Lcom/threerings/projectx/client/hud/a; 
L111:   invokespecial Method com/threerings/projectx/client/hud/J <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/aC;Lcom/threerings/projectx/client/hud/a;)V 
L114:   putfield Field com/threerings/projectx/client/aC afv Lcom/threerings/projectx/client/hud/J; 
L117:   aload_0 
L118:   new com/threerings/projectx/client/hud/s 
L121:   dup 
L122:   aload_0 
L123:   getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L126:   aload_0 
L127:   invokespecial Method com/threerings/projectx/client/hud/s <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/aC;)V 
L130:   putfield Field com/threerings/projectx/client/aC afw Lcom/threerings/projectx/client/hud/s; 
L133:   aload_0 
L134:   new com/threerings/projectx/client/hud/u 
L137:   dup 
L138:   aload_0 
L139:   getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L142:   invokespecial Method com/threerings/projectx/client/hud/u <init> (Lcom/threerings/projectx/util/A;)V 
L145:   putfield Field com/threerings/projectx/client/aC afq Lcom/threerings/projectx/client/hud/u; 
L148:   aload_0 
L149:   aload_0 
L150:   invokevirtual Method com/threerings/projectx/client/aC vx ()Lcom/threerings/projectx/client/aB; 
L153:   putfield Field com/threerings/projectx/client/aC afx Lcom/threerings/projectx/client/aB; 
L156:   return 
L157:   
        .linenumbertable 
            L0 1132 
            L11 1135 
            L19 1138 
            L27 1141 
            L43 1142 
            L59 1143 
            L70 1144 
            L81 1145 
            L97 1146 
            L117 1147 
            L133 1150 
            L148 1152 
            L156 1153 
        .end linenumbertable 
    .end code 
.end method 

.method protected vm : ()V 
    .code stack 12 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC aeW Lcom/threerings/projectx/client/hud/Minimap; 
L4:     ifnull L20 
L7:     aload_0 
L8:     ldc 'minimap' 
L10:    aload_0 
L11:    getfield Field com/threerings/projectx/client/aC aeW Lcom/threerings/projectx/client/hud/Minimap; 
L14:    getstatic Field com/threerings/opengl/gui/d/b NORTHEAST Lcom/threerings/opengl/gui/d/b$a; 
L17:    invokevirtual Method com/threerings/projectx/client/aC a (Ljava/lang/String;Lcom/threerings/opengl/gui/q;Lcom/threerings/opengl/gui/d/b$a;)V 

        .stack same 
L20:    aload_0 
L21:    ldc 'player' 
L23:    aload_0 
L24:    getfield Field com/threerings/projectx/client/aC afn Lcom/threerings/projectx/client/hud/K; 
L27:    getstatic Field com/threerings/opengl/gui/d/b NORTHWEST Lcom/threerings/opengl/gui/d/b$a; 
L30:    invokevirtual Method com/threerings/projectx/client/aC a (Ljava/lang/String;Lcom/threerings/opengl/gui/q;Lcom/threerings/opengl/gui/d/b$a;)V 
L33:    aload_0 
L34:    ldc 'description' 
L36:    aload_0 
L37:    getfield Field com/threerings/projectx/client/aC aeX Lcom/threerings/projectx/client/hud/q; 
L40:    new com/threerings/opengl/gui/d/b$a 
L43:    dup 
L44:    fconst_1 
L45:    fconst_1 
L46:    fconst_1 
L47:    fconst_1 
L48:    sipush -200 
L51:    iconst_0 
L52:    iconst_0 
L53:    invokespecial Method com/threerings/opengl/gui/d/b$a <init> (FFFFIIZ)V 
L56:    invokevirtual Method com/threerings/projectx/client/aC a (Ljava/lang/String;Lcom/threerings/opengl/gui/q;Lcom/threerings/opengl/gui/d/b$a;)V 
L59:    aload_0 
L60:    aload_0 
L61:    getfield Field com/threerings/projectx/client/aC afq Lcom/threerings/projectx/client/hud/u; 
L64:    getstatic Field com/threerings/opengl/gui/d/b SOUTHWEST Lcom/threerings/opengl/gui/d/b$a; 
L67:    invokevirtual Method com/threerings/projectx/client/aC add (Lcom/threerings/opengl/gui/q;Ljava/lang/Object;)V 
L70:    aload_0 
L71:    aload_0 
L72:    getfield Field com/threerings/projectx/client/aC afx Lcom/threerings/projectx/client/aB; 
L75:    new com/threerings/opengl/gui/d/b$a 
L78:    dup 
L79:    ldc +0.5f 
L81:    fconst_1 
L82:    ldc +0.5f 
L84:    fconst_1 
L85:    iconst_0 
L86:    bipush -120 
L88:    iconst_0 
L89:    invokespecial Method com/threerings/opengl/gui/d/b$a <init> (FFFFIIZ)V 
L92:    invokevirtual Method com/threerings/projectx/client/aC add (Lcom/threerings/opengl/gui/q;Ljava/lang/Object;)V 
L95:    return 
L96:    
        .linenumbertable 
            L0 1161 
            L7 1162 
            L20 1165 
            L33 1166 
            L59 1167 
            L70 1170 
            L95 1171 
        .end linenumbertable 
    .end code 
.end method 

.method protected vn : ()Lcom/threerings/projectx/client/hud/K; 
    .code stack 4 locals 1 
L0:     new com/threerings/projectx/client/hud/K 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L8:     aload_0 
L9:     getfield Field com/threerings/projectx/client/aC acf Lcom/threerings/projectx/client/et; 
L12:    invokespecial Method com/threerings/projectx/client/hud/K <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/et;)V 
L15:    areturn 
L16:    
        .linenumbertable 
            L0 1187 
        .end linenumbertable 
    .end code 
.end method 

.method protected vo : ()Lcom/threerings/projectx/client/hud/q; 
    .code stack 4 locals 1 
L0:     new com/threerings/projectx/client/hud/q 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L8:     aload_0 
L9:     getfield Field com/threerings/projectx/client/aC acf Lcom/threerings/projectx/client/et; 
L12:    invokespecial Method com/threerings/projectx/client/hud/q <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/et;)V 
L15:    areturn 
L16:    
        .linenumbertable 
            L0 1195 
        .end linenumbertable 
    .end code 
.end method 

.method protected final vp : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L4:     ifeq L55 
L7:     aload_0 
L8:     aconst_null 
L9:     aconst_null 
L10:    invokespecial Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/data/PlayerEquipment;Lcom/threerings/projectx/client/LoadoutPanel$Tab;)V 
L13:    aload_0 
L14:    getfield Field com/threerings/projectx/client/aC afb Z 
L17:    ifne L34 
L20:    aload_0 
L21:    getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L24:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L27:    ifne L34 
L30:    aload_0 
L31:    invokespecial Method com/threerings/projectx/client/aC vt ()V 

        .stack same 
L34:    aload_0 
L35:    invokespecial Method com/threerings/projectx/client/aC vr ()Z 
L38:    ifeq L55 
L41:    aload_0 
L42:    getfield Field com/threerings/projectx/client/aC afa Lcom/threerings/projectx/client/ch; 
L45:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L48:    ifne L55 
L51:    aload_0 
L52:    invokespecial Method com/threerings/projectx/client/aC vs ()V 

        .stack same 
L55:    return 
L56:    
        .linenumbertable 
            L0 1203 
            L7 1204 
            L13 1205 
            L30 1206 
            L34 1208 
            L51 1209 
            L55 1212 
        .end linenumbertable 
    .end code 
.end method 

.method protected final vq : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L4:     ifeq L87 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC afb Z 
L11:    ifne L28 
L14:    aload_0 
L15:    getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L18:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L21:    ifne L28 
L24:    aload_0 
L25:    invokespecial Method com/threerings/projectx/client/aC vt ()V 

        .stack same 
L28:    aload_0 
L29:    invokespecial Method com/threerings/projectx/client/aC vD ()Z 
L32:    ifeq L70 
L35:    aload_0 
L36:    aconst_null 
L37:    invokevirtual Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/item/data/LevelItem;)V 
L40:    aload_0 
L41:    invokespecial Method com/threerings/projectx/client/aC vr ()Z 
L44:    ifeq L87 
L47:    aload_0 
L48:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L51:    invokeinterface InterfaceMethod com/threerings/projectx/util/A xa ()Lcom/threerings/projectx/client/eh; 1 
L56:    invokevirtual Method com/threerings/projectx/client/eh getDisplayWidth ()I 
L59:    sipush 1024 
L62:    if_icmple L87 
L65:    aload_0 
L66:    invokespecial Method com/threerings/projectx/client/aC vs ()V 
L69:    return 

        .stack same 
L70:    aload_0 
L71:    aconst_null 
L72:    aconst_null 
L73:    invokespecial Method com/threerings/projectx/client/aC a (Lcom/threerings/projectx/data/PlayerEquipment;Lcom/threerings/projectx/client/LoadoutPanel$Tab;)V 
L76:    aload_0 
L77:    invokespecial Method com/threerings/projectx/client/aC vr ()Z 
L80:    ifeq L87 
L83:    aload_0 
L84:    invokespecial Method com/threerings/projectx/client/aC vs ()V 

        .stack same 
L87:    return 
L88:    
        .linenumbertable 
            L0 1219 
            L7 1220 
            L24 1221 
            L28 1223 
            L35 1224 
            L40 1225 
            L65 1226 
            L70 1230 
            L76 1231 
            L83 1232 
            L87 1236 
        .end linenumbertable 
    .end code 
.end method 

.method private vr : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L4:     invokeinterface InterfaceMethod com/threerings/projectx/util/A uk ()Lcom/threerings/projectx/data/PlayerObject; 1 
L9:     getfield Field com/threerings/projectx/data/PlayerObject loadouts Lcom/threerings/presents/dobj/DSet; 
L12:    invokevirtual Method com/threerings/presents/dobj/DSet size ()I 
L15:    iconst_1 
L16:    if_icmple L21 
L19:    iconst_1 
L20:    ireturn 

        .stack same 
L21:    iconst_0 

        .stack stack_1 Integer 
L22:    ireturn 
L23:    
        .linenumbertable 
            L0 1243 
        .end linenumbertable 
    .end code 
.end method 

.method private a : (Lcom/threerings/projectx/data/PlayerEquipment;Lcom/threerings/projectx/client/LoadoutPanel$Tab;)V 
    .code stack 7 locals 3 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L4:     ifeq L42 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 
L11:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L14:    ifeq L24 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 
L21:    invokevirtual Method com/threerings/projectx/client/m dismiss ()V 

        .stack same 
L24:    aload_0 
L25:    new com/threerings/projectx/client/m 
L28:    dup 
L29:    aload_0 
L30:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L33:    aload_0 
L34:    aload_1 
L35:    aload_2 
L36:    invokespecial Method com/threerings/projectx/client/m <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/aC;Lcom/threerings/projectx/data/PlayerEquipment;Lcom/threerings/projectx/client/LoadoutPanel$Tab;)V 
L39:    putfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 

        .stack same 
L42:    return 
L43:    
        .linenumbertable 
            L0 1252 
            L7 1253 
            L17 1254 
            L24 1256 
            L42 1258 
        .end linenumbertable 
    .end code 
.end method 

.method private vs : ()V 
    .code stack 4 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L4:     ifeq L32 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC afa Lcom/threerings/projectx/client/ch; 
L11:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L14:    ifne L32 
L17:    aload_0 
L18:    new com/threerings/projectx/client/ch 
L21:    dup 
L22:    aload_0 
L23:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L26:    invokespecial Method com/threerings/projectx/client/ch <init> (Lcom/threerings/projectx/util/A;)V 
L29:    putfield Field com/threerings/projectx/client/aC afa Lcom/threerings/projectx/client/ch; 

        .stack same 
L32:    return 
L33:    
        .linenumbertable 
            L0 1274 
            L17 1275 
            L32 1277 
        .end linenumbertable 
    .end code 
.end method 

.method private vt : ()V 
    .code stack 4 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L4:     ifeq L39 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L11:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L14:    ifne L39 
L17:    aload_0 
L18:    new com/threerings/projectx/item/client/f 
L21:    dup 
L22:    aload_0 
L23:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L26:    invokespecial Method com/threerings/projectx/item/client/f <init> (Lcom/threerings/projectx/util/A;)V 
L29:    putfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L32:    aload_0 
L33:    getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L36:    invokevirtual Method com/threerings/projectx/item/client/f show ()V 

        .stack same 
L39:    return 
L40:    
        .linenumbertable 
            L0 1284 
            L17 1285 
            L32 1286 
            L39 1288 
        .end linenumbertable 
    .end code 
.end method 

.method private vu : ()V 
    .code stack 4 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L4:     ifeq L32 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC afd Lcom/threerings/projectx/social/client/k; 
L11:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L14:    ifne L32 
L17:    aload_0 
L18:    new com/threerings/projectx/social/client/k 
L21:    dup 
L22:    aload_0 
L23:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L26:    invokespecial Method com/threerings/projectx/social/client/k <init> (Lcom/threerings/projectx/util/A;)V 
L29:    putfield Field com/threerings/projectx/client/aC afd Lcom/threerings/projectx/social/client/k; 

        .stack same 
L32:    return 
L33:    
        .linenumbertable 
            L0 1323 
            L17 1324 
            L32 1326 
        .end linenumbertable 
    .end code 
.end method 

.method private b : (Lcom/threerings/projectx/client/HelpWindow$Tab;)V 
    .code stack 6 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L4:     ifeq L43 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC afg Lcom/threerings/projectx/client/HelpWindow; 
L11:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L14:    ifeq L26 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/aC afg Lcom/threerings/projectx/client/HelpWindow; 
L21:    aload_1 
L22:    invokevirtual Method com/threerings/projectx/client/HelpWindow a (Lcom/threerings/projectx/client/HelpWindow$Tab;)V 
L25:    return 

        .stack same 
L26:    aload_0 
L27:    new com/threerings/projectx/client/HelpWindow 
L30:    dup 
L31:    aload_0 
L32:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L35:    aload_1 
L36:    aload_0 
L37:    invokespecial Method com/threerings/projectx/client/HelpWindow <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/HelpWindow$Tab;Lcom/threerings/projectx/client/aC;)V 
L40:    putfield Field com/threerings/projectx/client/aC afg Lcom/threerings/projectx/client/HelpWindow; 

        .stack same 
L43:    return 
L44:    
        .linenumbertable 
            L0 1333 
            L7 1334 
            L17 1335 
            L26 1337 
            L43 1340 
        .end linenumbertable 
    .end code 
.end method 

.method protected final vv : ()V 
    .code stack 4 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L4:     ifeq L50 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L11:    invokeinterface InterfaceMethod com/threerings/projectx/util/A uk ()Lcom/threerings/projectx/data/PlayerObject; 1 
L16:    getfield Field com/threerings/projectx/data/PlayerObject tokens Lcom/threerings/projectx/data/ProjectXTokenRing; 
L19:    invokevirtual Method com/threerings/projectx/data/ProjectXTokenRing Cg ()Z 
L22:    ifeq L50 
L25:    aload_0 
L26:    getfield Field com/threerings/projectx/client/aC afh Lcom/threerings/projectx/sprites/a/l; 
L29:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L32:    ifne L50 
L35:    aload_0 
L36:    new com/threerings/projectx/sprites/a/l 
L39:    dup 
L40:    aload_0 
L41:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L44:    invokespecial Method com/threerings/projectx/sprites/a/l <init> (Lcom/threerings/projectx/util/A;)V 
L47:    putfield Field com/threerings/projectx/client/aC afh Lcom/threerings/projectx/sprites/a/l; 

        .stack same 
L50:    return 
L51:    
        .linenumbertable 
            L0 1347 
            L25 1348 
            L35 1349 
            L50 1352 
        .end linenumbertable 
    .end code 
.end method 

.method protected final a : (Lcom/threerings/projectx/client/UplinkWindow$Tab;)V 
    .code stack 6 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC isAdded ()Z 
L4:     ifeq L43 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/aC afe Lcom/threerings/projectx/client/UplinkWindow; 
L11:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L14:    ifeq L26 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/aC afe Lcom/threerings/projectx/client/UplinkWindow; 
L21:    aload_1 
L22:    invokevirtual Method com/threerings/projectx/client/UplinkWindow b (Lcom/threerings/projectx/client/UplinkWindow$Tab;)V 
L25:    return 

        .stack same 
L26:    aload_0 
L27:    new com/threerings/projectx/client/UplinkWindow 
L30:    dup 
L31:    aload_0 
L32:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L35:    aload_1 
L36:    aload_0 
L37:    invokespecial Method com/threerings/projectx/client/UplinkWindow <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/UplinkWindow$Tab;Lcom/threerings/projectx/client/aC;)V 
L40:    putfield Field com/threerings/projectx/client/aC afe Lcom/threerings/projectx/client/UplinkWindow; 

        .stack same 
L43:    return 
L44:    
        .linenumbertable 
            L0 1359 
            L7 1360 
            L17 1361 
            L26 1363 
            L43 1366 
        .end linenumbertable 
    .end code 
.end method 

.method private vw : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afd Lcom/threerings/projectx/social/client/k; 
L4:     invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L7:     ifeq L17 
L10:    aload_0 
L11:    getfield Field com/threerings/projectx/client/aC afd Lcom/threerings/projectx/social/client/k; 
L14:    invokevirtual Method com/threerings/projectx/social/client/k tI ()V 

        .stack same 
L17:    return 
L18:    
        .linenumbertable 
            L0 1399 
            L10 1400 
            L17 1402 
        .end linenumbertable 
    .end code 
.end method 

.method protected final ao : (Z)[Lcom/threerings/opengl/gui/aE; 
    .code stack 4 locals 2 
L0:     iload_1 
L1:     ifeq L107 
L4:     bipush 13 
L6:     anewarray com/threerings/opengl/gui/aE 
L9:     dup 
L10:    iconst_0 
L11:    aload_0 
L12:    getfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 
L15:    aastore 
L16:    dup 
L17:    iconst_1 
L18:    aload_0 
L19:    getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L22:    aastore 
L23:    dup 
L24:    iconst_2 
L25:    aload_0 
L26:    getfield Field com/threerings/projectx/client/aC afc Lcom/threerings/projectx/social/client/F; 
L29:    aastore 
L30:    dup 
L31:    iconst_3 
L32:    aload_0 
L33:    getfield Field com/threerings/projectx/client/aC afd Lcom/threerings/projectx/social/client/k; 
L36:    aastore 
L37:    dup 
L38:    iconst_4 
L39:    aload_0 
L40:    getfield Field com/threerings/projectx/client/aC afk Lcom/threerings/projectx/craft/a/z; 
L43:    aastore 
L44:    dup 
L45:    iconst_5 
L46:    aload_0 
L47:    getfield Field com/threerings/projectx/client/aC afm Lcom/threerings/projectx/client/fp; 
L50:    aastore 
L51:    dup 
L52:    bipush 6 
L54:    aload_0 
L55:    getfield Field com/threerings/projectx/client/aC afe Lcom/threerings/projectx/client/UplinkWindow; 
L58:    aastore 
L59:    dup 
L60:    bipush 7 
L62:    aload_0 
L63:    getfield Field com/threerings/projectx/client/aC afg Lcom/threerings/projectx/client/HelpWindow; 
L66:    aastore 
L67:    dup 
L68:    bipush 8 
L70:    aload_0 
L71:    getfield Field com/threerings/projectx/client/aC afa Lcom/threerings/projectx/client/ch; 
L74:    aastore 
L75:    dup 
L76:    bipush 9 
L78:    aload_0 
L79:    getfield Field com/threerings/projectx/client/aC aff Lcom/threerings/projectx/mission/client/u; 
L82:    aastore 
L83:    dup 
L84:    bipush 10 
L86:    aload_0 
L87:    getfield Field com/threerings/projectx/client/aC afh Lcom/threerings/projectx/sprites/a/l; 
L90:    aastore 
L91:    dup 
L92:    bipush 11 
L94:    aload_0 
L95:    getfield Field com/threerings/projectx/client/aC aeZ Lcom/threerings/projectx/item/client/q; 
L98:    aastore 
L99:    dup 
L100:   bipush 12 
L102:   invokestatic Method com/threerings/projectx/guild/client/GuildBagWindow Hn ()Lcom/threerings/projectx/guild/client/GuildBagWindow; 
L105:   aastore 
L106:   areturn 

        .stack same_extended 
L107:   aload_0 
L108:   invokespecial Method com/threerings/projectx/client/aC vr ()Z 
L111:   ifeq L140 
L114:   iconst_3 
L115:   anewarray com/threerings/opengl/gui/aE 
L118:   dup 
L119:   iconst_0 
L120:   aload_0 
L121:   getfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 
L124:   aastore 
L125:   dup 
L126:   iconst_1 
L127:   aload_0 
L128:   getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L131:   aastore 
L132:   dup 
L133:   iconst_2 
L134:   aload_0 
L135:   getfield Field com/threerings/projectx/client/aC afa Lcom/threerings/projectx/client/ch; 
L138:   aastore 
L139:   areturn 

        .stack same 
L140:   iconst_2 
L141:   anewarray com/threerings/opengl/gui/aE 
L144:   dup 
L145:   iconst_0 
L146:   aload_0 
L147:   getfield Field com/threerings/projectx/client/aC afi Lcom/threerings/projectx/client/m; 
L150:   aastore 
L151:   dup 
L152:   iconst_1 
L153:   aload_0 
L154:   getfield Field com/threerings/projectx/client/aC aeY Lcom/threerings/projectx/item/client/f; 
L157:   aastore 

        .stack stack_1 Object [Lcom/threerings/opengl/gui/aE; 
L158:   areturn 
L159:   
        .linenumbertable 
            L0 1409 
            L4 1410 
            L107 1415 
        .end linenumbertable 
    .end code 
.end method 

.method private varargs a : ([Lcom/threerings/opengl/gui/aE;)Z 
    .code stack 2 locals 6 
L0:     iconst_0 
L1:     istore_2 
L2:     aload_1 
L3:     dup 
L4:     astore_1 
L5:     arraylength 
L6:     istore_3 
L7:     iconst_0 
L8:     istore 4 

        .stack full 
            locals Object com/threerings/projectx/client/aC Object [Lcom/threerings/opengl/gui/aE; Integer Object [Lcom/threerings/opengl/gui/aE; Integer Integer 
            stack 
        .end stack 
L10:    iload 4 
L12:    iload_3 
L13:    if_icmpge L74 
L16:    aload_1 
L17:    iload 4 
L19:    aaload 
L20:    dup 
L21:    astore 5 
L23:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L26:    ifeq L68 
L29:    aload 5 
L31:    instanceof com/threerings/projectx/client/ui/SlidingPanel 
L34:    ifeq L61 
L37:    aload 5 
L39:    checkcast com/threerings/projectx/client/ui/SlidingPanel 
L42:    dup 
L43:    astore 5 
L45:    invokevirtual Method com/threerings/projectx/client/ui/SlidingPanel Av ()Z 
L48:    ifne L58 
L51:    aload 5 
L53:    invokevirtual Method com/threerings/projectx/client/ui/SlidingPanel Au ()V 
L56:    iconst_1 
L57:    istore_2 

        .stack append Object com/threerings/opengl/gui/aE 
L58:    goto L68 

        .stack same 
L61:    aload 5 
L63:    invokevirtual Method com/threerings/opengl/gui/aE dismiss ()V 
L66:    iconst_1 
L67:    istore_2 

        .stack chop 1 
L68:    iinc 4 1 
L71:    goto L10 

        .stack chop 3 
L74:    iload_2 
L75:    ireturn 
L76:    
        .linenumbertable 
            L0 1436 
            L2 1437 
            L21 1438 
            L29 1439 
            L37 1440 
            L43 1441 
            L51 1442 
            L56 1443 
            L58 1445 
            L61 1446 
            L66 1447 
            L68 1437 
            L74 1451 
        .end linenumbertable 
    .end code 
.end method 

.method protected final varargs b : ([Lcom/threerings/opengl/gui/aE;)Z 
    .code stack 2 locals 5 
L0:     aload_1 
L1:     dup 
L2:     astore_1 
L3:     arraylength 
L4:     istore_2 
L5:     iconst_0 
L6:     istore_3 

        .stack append Object [Lcom/threerings/opengl/gui/aE; Integer Integer 
L7:     iload_3 
L8:     iload_2 
L9:     if_icmpge L32 
L12:    aload_1 
L13:    iload_3 
L14:    aaload 
L15:    dup 
L16:    astore 4 
L18:    invokestatic Method com/threerings/projectx/client/aC b (Lcom/threerings/opengl/gui/aE;)Z 
L21:    ifne L26 
L24:    iconst_0 
L25:    ireturn 

        .stack same 
L26:    iinc 3 1 
L29:    goto L7 

        .stack chop 3 
L32:    iconst_1 
L33:    ireturn 
L34:    
        .linenumbertable 
            L0 1484 
            L16 1485 
            L24 1486 
            L26 1484 
            L32 1489 
        .end linenumbertable 
    .end code 
.end method 

.method protected static b : (Lcom/threerings/opengl/gui/aE;)Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     ifnull L13 
L4:     aload_0 
L5:     invokevirtual Method com/threerings/opengl/gui/aE isAdded ()Z 
L8:     ifeq L13 
L11:    iconst_1 
L12:    ireturn 

        .stack same 
L13:    iconst_0 

        .stack stack_1 Integer 
L14:    ireturn 
L15:    
        .linenumbertable 
            L0 1497 
        .end linenumbertable 
    .end code 
.end method 

.method protected vx : ()Lcom/threerings/projectx/client/aB; 
    .code stack 4 locals 1 
L0:     new com/threerings/projectx/client/aB 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L8:     aload_0 
L9:     getfield Field com/threerings/projectx/client/aC acf Lcom/threerings/projectx/client/et; 
L12:    invokespecial Method com/threerings/projectx/client/aB <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/client/et;)V 
L15:    areturn 
L16:    
        .linenumbertable 
            L0 1505 
        .end linenumbertable 
    .end code 
.end method 

.method private vy : ()V 
    .code stack 4 locals 3 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/aC vz ()Z 
L4:     istore_1 
L5:     aload_0 
L6:     invokespecial Method com/threerings/projectx/client/aC vB ()Z 
L9:     istore_2 
L10:    aload_0 
L11:    getfield Field com/threerings/projectx/client/aC afp Lcom/threerings/projectx/client/aC$c; 
L14:    ifnull L32 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/aC afp Lcom/threerings/projectx/client/aC$c; 
L21:    iload_1 
L22:    aload_0 
L23:    invokespecial Method com/threerings/projectx/client/aC vA ()Z 
L26:    iload_2 
L27:    invokeinterface InterfaceMethod com/threerings/projectx/client/aC$c a (ZZZ)V 4 

        .stack append Integer Integer 
L32:    aload_0 
L33:    getfield Field com/threerings/projectx/client/aC aft Lcom/threerings/projectx/client/hud/y; 
L36:    iload_1 
L37:    ifne L44 
L40:    iload_2 
L41:    ifeq L48 

        .stack stack_1 Object com/threerings/projectx/client/hud/y 
L44:    iconst_1 
L45:    goto L49 

        .stack stack_1 Object com/threerings/projectx/client/hud/y 
L48:    iconst_0 

        .stack full 
            locals Object com/threerings/projectx/client/aC Integer Integer 
            stack Object com/threerings/projectx/client/hud/y Integer 
        .end stack 
L49:    invokevirtual Method com/threerings/projectx/client/hud/y aY (Z)V 
L52:    return 
L53:    
        .linenumbertable 
            L0 1513 
            L5 1514 
            L10 1515 
            L17 1516 
            L32 1518 
            L52 1519 
        .end linenumbertable 
    .end code 
.end method 

.method protected final vz : ()Z 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L4:     invokeinterface InterfaceMethod com/threerings/projectx/util/A xc ()Lcom/threerings/crowd/chat/client/k; 1 
L9:     astore_1 
L10:    aload_0 
L11:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L14:    invokeinterface InterfaceMethod com/threerings/projectx/util/A uk ()Lcom/threerings/projectx/data/PlayerObject; 1 
L19:    getfield Field com/threerings/projectx/data/PlayerObject newMailInfo Lcom/threerings/presents/dobj/DSet; 
L22:    invokevirtual Method com/threerings/presents/dobj/DSet iterator ()Ljava/util/Iterator; 
L25:    astore_2 

        .stack append Object com/threerings/crowd/chat/client/k Object java/util/Iterator 
L26:    aload_2 
L27:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L32:    ifeq L61 
L35:    aload_2 
L36:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L41:    checkcast com/threerings/projectx/uplink/data/NewMailInfo 
L44:    astore_3 
L45:    aload_1 
L46:    aload_3 
L47:    getfield Field com/threerings/projectx/uplink/data/NewMailInfo name Lcom/threerings/util/Name; 
L50:    invokevirtual Method com/threerings/crowd/chat/client/k b (Lcom/threerings/util/Name;)Z 
L53:    ifne L58 
L56:    iconst_1 
L57:    ireturn 

        .stack same 
L58:    goto L26 

        .stack chop 1 
L61:    iconst_0 
L62:    ireturn 
L63:    
        .linenumbertable 
            L0 1526 
            L10 1527 
            L45 1528 
            L56 1529 
            L61 1532 
        .end linenumbertable 
    .end code 
.end method 

.method private vA : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L4:     invokeinterface InterfaceMethod com/threerings/projectx/util/A uk ()Lcom/threerings/projectx/data/PlayerObject; 1 
L9:     getfield Field com/threerings/projectx/data/PlayerObject gifts Lcom/threerings/presents/dobj/DSet; 
L12:    invokevirtual Method com/threerings/presents/dobj/DSet isEmpty ()Z 
L15:    ifne L20 
L18:    iconst_1 
L19:    ireturn 

        .stack same 
L20:    iconst_0 

        .stack stack_1 Integer 
L21:    ireturn 
L22:    
        .linenumbertable 
            L0 1540 
        .end linenumbertable 
    .end code 
.end method 

.method private vB : ()Z 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L4:     invokeinterface InterfaceMethod com/threerings/projectx/util/A uk ()Lcom/threerings/projectx/data/PlayerObject; 1 
L9:     getfield Field com/threerings/projectx/data/PlayerObject gifts Lcom/threerings/presents/dobj/DSet; 
L12:    invokevirtual Method com/threerings/presents/dobj/DSet iterator ()Ljava/util/Iterator; 
L15:    astore_1 

        .stack append Object java/util/Iterator 
L16:    aload_1 
L17:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L22:    ifeq L47 
L25:    aload_1 
L26:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L31:    checkcast com/threerings/projectx/uplink/data/Gift 
L34:    dup 
L35:    astore_2 
L36:    invokevirtual Method com/threerings/projectx/uplink/data/Gift MB ()Lcom/threerings/util/Name; 
L39:    ifnonnull L44 
L42:    iconst_1 
L43:    ireturn 

        .stack same 
L44:    goto L16 

        .stack chop 1 
L47:    iconst_0 
L48:    ireturn 
L49:    
        .linenumbertable 
            L0 1548 
            L35 1549 
            L42 1550 
            L47 1553 
        .end linenumbertable 
    .end code 
.end method 

.method private vC : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC afs Lcom/threerings/projectx/client/hud/U; 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L8:     invokestatic Method com/threerings/projectx/item/client/X H (Lcom/threerings/projectx/util/A;)Z 
L11:    ifeq L25 
L14:    aload_0 
L15:    invokespecial Method com/threerings/projectx/client/aC vD ()Z 
L18:    ifeq L25 
L21:    iconst_1 
L22:    goto L26 

        .stack stack_1 Object com/threerings/projectx/client/hud/U 
L25:    iconst_0 

        .stack full 
            locals Object com/threerings/projectx/client/aC 
            stack Object com/threerings/projectx/client/hud/U Integer 
        .end stack 
L26:    invokevirtual Method com/threerings/projectx/client/hud/U bf (Z)V 
L29:    return 
L30:    
        .linenumbertable 
            L0 1561 
            L29 1562 
        .end linenumbertable 
    .end code 
.end method 

.method private vD : ()Z 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L4:     invokeinterface InterfaceMethod com/threerings/projectx/util/A uk ()Lcom/threerings/projectx/data/PlayerObject; 1 
L9:     dup 
L10:    astore_1 
L11:    getfield Field com/threerings/projectx/data/PlayerObject items Lcom/threerings/presents/dobj/DSet; 
L14:    ldc Class com/threerings/projectx/item/data/LevelItem 
L16:    invokestatic Method com/google/common/collect/Iterables filter (Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable; 
L19:    invokeinterface InterfaceMethod java/lang/Iterable iterator ()Ljava/util/Iterator; 1 
L24:    astore_1 

        .stack append Object com/threerings/projectx/data/PlayerObject Object java/util/Iterator 
L25:    aload_1 
L26:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L31:    ifeq L65 
L34:    aload_1 
L35:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L40:    checkcast com/threerings/projectx/item/data/LevelItem 
L43:    dup 
L44:    astore_2 
L45:    aload_0 
L46:    getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L49:    invokeinterface InterfaceMethod com/threerings/projectx/util/A getConfigManager ()Lcom/threerings/config/ConfigManager; 1 
L54:    invokevirtual Method com/threerings/projectx/item/data/LevelItem S (Lcom/threerings/config/ConfigManager;)Z 
L57:    ifeq L62 
L60:    iconst_1 
L61:    ireturn 

        .stack same 
L62:    goto L25 

        .stack chop 1 
L65:    iconst_0 
L66:    ireturn 
L67:    
        .linenumbertable 
            L0 1569 
            L10 1570 
            L44 1571 
            L60 1572 
            L65 1575 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Lcom/threerings/opengl/gui/e;)V 
    .code stack 5 locals 2 
L0:     new com/threerings/projectx/client/fn 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/aC _ctx Lcom/threerings/projectx/util/A; 
L8:     aload_0 
L9:     invokevirtual Method com/threerings/projectx/client/aC getWindow ()Lcom/threerings/opengl/gui/aE; 
L12:    aload_0 
L13:    invokespecial Method com/threerings/projectx/client/fn <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/opengl/gui/aE;Lcom/threerings/projectx/client/aC;)V 
L16:    aload_1 
L17:    invokevirtual Method com/threerings/opengl/gui/e getAbsoluteX ()I 
L20:    aload_1 
L21:    invokevirtual Method com/threerings/opengl/gui/e getAbsoluteY ()I 
L24:    aload_1 
L25:    invokevirtual Method com/threerings/opengl/gui/e getHeight ()I 
L28:    iadd 
L29:    iconst_1 
L30:    invokevirtual Method com/threerings/projectx/client/fn popup (IIZ)V 
L33:    return 
L34:    
        .linenumbertable 
            L0 1583 
            L33 1585 
        .end linenumbertable 
    .end code 
.end method 
.innerclasses 
    com/threerings/projectx/client/aC$a com/threerings/projectx/client/aC a public static 
    com/threerings/projectx/client/aC$b com/threerings/projectx/client/aC b public static interface abstract 
    com/threerings/projectx/client/aC$c com/threerings/projectx/client/aC c public static interface abstract 
    com/threerings/projectx/client/aN [0] [0] 
    com/threerings/projectx/client/aM [0] [0] 
    com/threerings/projectx/client/aL [0] [0] 
    com/threerings/projectx/client/aK [0] [0] 
    com/threerings/projectx/client/aJ [0] [0] 
    com/threerings/projectx/client/aI [0] [0] 
    com/threerings/projectx/client/aH [0] [0] 
    com/threerings/projectx/client/aG [0] [0] 
    com/threerings/projectx/client/aF [0] [0] 
    com/threerings/projectx/client/aV [0] [0] 
    com/threerings/projectx/client/aU [0] [0] 
    com/threerings/projectx/client/aT [0] [0] 
    com/threerings/projectx/client/aS [0] [0] 
    com/threerings/projectx/client/aR [0] [0] 
    com/threerings/projectx/client/aQ [0] [0] 
    com/threerings/projectx/client/aP [0] [0] 
    com/threerings/projectx/client/aO [0] [0] 
    com/threerings/projectx/client/aD [0] [0] 
    com/threerings/projectx/client/ProjectXPrefs$c com/threerings/projectx/client/ProjectXPrefs c public static 
    com/threerings/projectx/mission/client/MissionPanel$Tab com/threerings/projectx/mission/client/MissionPanel Tab public static final enum 
    com/threerings/opengl/gui/d/b$a com/threerings/opengl/gui/d/b a public static 
    com/threerings/projectx/client/LoadoutPanel$Tab com/threerings/projectx/client/LoadoutPanel Tab public static final enum 
    com/threerings/projectx/client/HelpWindow$Tab com/threerings/projectx/client/HelpWindow Tab public static final enum 
    com/threerings/projectx/client/UplinkWindow$Tab com/threerings/projectx/client/UplinkWindow Tab public static final enum 
    com/threerings/projectx/item/client/g$c com/threerings/projectx/item/client/g c public static interface abstract 
    com/threerings/crowd/chat/client/k$a com/threerings/crowd/chat/client/k a public static interface abstract 
    com/threerings/projectx/client/ProjectXPrefs$b com/threerings/projectx/client/ProjectXPrefs b public static interface abstract 
    com/threerings/opengl/gui/e/f$b com/threerings/opengl/gui/e/f b public static interface abstract 
.end innerclasses 
.sourcefile SourceFile 
.const [u723] = Utf8 (Lcom/threerings/projectx/client/Command;Lcom/threerings/opengl/gui/e/f$b;)V 
.end class 
