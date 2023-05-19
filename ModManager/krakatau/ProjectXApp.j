.version 49 0 
.class public super com/threerings/projectx/client/ProjectXApp 
.super com/threerings/opengl/n 
.implements com/threerings/projectx/data/ProjectXCodes 
.implements com/threerings/projectx/util/A 
.field private akf Lcom/samskivert/util/m; 
.field protected UO Lcom/threerings/presents/client/Client; 
.field private akg I 
.field protected akh Lcom/threerings/projectx/client/ag; 
.field private aki Lcom/threerings/projectx/client/ei; 
.field private akj Lcom/threerings/crowd/client/o; 
.field private akk Lcom/threerings/projectx/client/chat/ProjectXChatDirector; 
.field private akl Lcom/threerings/whirled/a/d; 
.field protected akm Lcom/threerings/crowd/chat/client/k; 
.field protected akn Lcom/threerings/projectx/client/ex; 
.field private ako Lcom/threerings/projectx/client/fq; 
.field private akp Lcom/threerings/projectx/client/fq; 
.field private akq Lcom/threerings/projectx/social/client/n; 
.field private akr Lcom/threerings/projectx/admin/client/b; 
.field private aks Lcom/threerings/projectx/guild/client/L; 
.field private akt Lcom/threerings/projectx/guild/client/az; 
.field private aku Lcom/threerings/projectx/dungeon/client/R; 
.field private akv Lcom/threerings/projectx/client/dj; 
.field protected akw Lcom/threerings/projectx/partner/client/SteamDirector; 
.field protected akx Lcom/threerings/projectx/client/eh; 
.field private aky Lcom/threerings/projectx/client/aw; 
.field protected akz Lcom/threerings/opengl/q; 
.field private akA Lcom/threerings/projectx/client/hud/n; 
.field protected akB Ljava/lang/String; 
.field private akC Ljava/lang/String; 
.field private akD Ljava/lang/String; 
.field protected akE Lcom/threerings/projectx/data/ServerObject; 
.field protected akF Lcom/threerings/projectx/client/ProjectXApp$b; 
.field private akG Lcom/samskivert/util/ObserverList; .fieldattributes 
    .signature Lcom/samskivert/util/ObserverList<Lcom/threerings/projectx/client/ProjectXApp$a;>; 
.end fieldattributes 
.field private akH Lcom/threerings/openal/m; 
.field protected akI Lcom/samskivert/util/z; .fieldattributes 
    .signature Lcom/samskivert/util/z<Lcom/threerings/tudey/data/TudeySceneModel;>; 
.end fieldattributes 
.field protected akJ Z 
.field protected akK Ljava/lang/String; 
.field private akL J 
.field private akM Z 
.field protected akN Z 
.field protected akO Z 
.field protected akP Z 
.field private akQ J 
.field private akR J 
.field private akS Lcom/threerings/projectx/client/s; 
.field private akT Ljava/util/Set; .fieldattributes 
    .signature Ljava/util/Set<Ljava/lang/String;>; 
.end fieldattributes 
.field protected akU Z 
.field private akV Lcom/google/common/eventbus/g; 
.field protected akW Lcom/threerings/presents/dobj/k; 
.field private akX Lcom/threerings/presents/dobj/j; 
.field private akY Lcom/samskivert/util/E; 
.field private akZ Ljava/lang/Runnable; 
.field private static _language Ljava/lang/String; 
.field private static ala Lcom/samskivert/swing/RuntimeAdjust$b; 
.field private static alb Lcom/samskivert/swing/RuntimeAdjust$b; 

.method public static main : ([Ljava/lang/String;)V 
    .code stack 10 locals 8 
L0:     ldc 'com.threerings.io.enumPolicy' 
L2:     ldc 'ORDINAL' 
L4:     invokestatic Method java/lang/System setProperty (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L7:     pop 
L8:     invokestatic Method com/samskivert/util/ak gm ()Z 
L11:    ifeq L20 
L14:    invokestatic Method javax/swing/UIManager getCrossPlatformLookAndFeelClassName ()Ljava/lang/String; 
L17:    invokestatic Method javax/swing/UIManager setLookAndFeel (Ljava/lang/String;)V 

        .stack same 
L20:    ldc 'projectx.log' 
L22:    invokestatic Method com/threerings/util/X dM (Ljava/lang/String;)V 
L25:    aconst_null 
L26:    astore_1 
L27:    iconst_0 
L28:    istore_2 

        .stack append Object java/lang/String Object java/lang/String Integer 
L29:    iload_2 
L30:    aload_0 
L31:    arraylength 
L32:    if_icmpge L69 
L35:    aload_0 
L36:    iload_2 
L37:    aaload 
L38:    dup 
L39:    astore_3 
L40:    ldc '+connect=' 
L42:    invokevirtual Method java/lang/String startsWith (Ljava/lang/String;)Z 
L45:    ifeq L63 
L48:    aload_3 
L49:    astore_1 
L50:    aload_0 
L51:    iload_2 
L52:    iconst_1 
L53:    invokestatic Method com/samskivert/util/c b ([Ljava/lang/Object;II)[Ljava/lang/Object; 
L56:    checkcast [Ljava/lang/String; 
L59:    astore_0 
L60:    goto L69 

        .stack same 
L63:    iinc 2 1 
L66:    goto L29 

        .stack chop 1 
L69:    aload_0 
L70:    arraylength 
L71:    ifle L80 
L74:    aload_0 
L75:    iconst_0 
L76:    aaload 
L77:    goto L85 

        .stack same 
L80:    ldc 'username' 
L82:    invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 

        .stack stack_1 Object java/lang/String 
L85:    astore_2 
L86:    aload_0 
L87:    arraylength 
L88:    iconst_1 
L89:    if_icmple L98 
L92:    aload_0 
L93:    iconst_1 
L94:    aaload 
L95:    goto L103 

        .stack append Object java/lang/String 
L98:    ldc 'password' 
L100:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 

        .stack stack_1 Object java/lang/String 
L103:   astore_3 
L104:   ldc 'encrypted' 
L106:   invokestatic Method java/lang/Boolean getBoolean (Ljava/lang/String;)Z 
L109:   istore 4 
L111:   aload_0 
L112:   arraylength 
L113:   iconst_2 
L114:   if_icmple L123 
L117:   aload_0 
L118:   iconst_2 
L119:   aaload 
L120:   goto L128 

        .stack append Object java/lang/String Integer 
L123:   ldc 'knight' 
L125:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 

        .stack stack_1 Object java/lang/String 
L128:   astore 5 
L130:   aload_0 
L131:   arraylength 
L132:   iconst_3 
L133:   if_icmple L142 
L136:   aload_0 
L137:   iconst_3 
L138:   aaload 
L139:   goto L147 

        .stack append Object java/lang/String 
L142:   ldc 'action' 
L144:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 

        .stack stack_1 Object java/lang/String 
L147:   astore 6 
L149:   aload_0 
L150:   arraylength 
L151:   iconst_4 
L152:   if_icmple L161 
L155:   aload_0 
L156:   iconst_4 
L157:   aaload 
L158:   goto L166 

        .stack append Object java/lang/String 
L161:   ldc 'arg' 
L163:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 

        .stack stack_1 Object java/lang/String 
L166:   astore_0 
L167:   ldc 'sessionKey' 
L169:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L172:   astore 7 
L174:   new com/threerings/projectx/client/ProjectXApp 
L177:   dup 
L178:   aload_2 
L179:   aload_3 
L180:   iload 4 
L182:   aload 5 
L184:   aload 6 
L186:   aload_0 
L187:   aload 7 
L189:   aload_1 
L190:   invokespecial Method com/threerings/projectx/client/ProjectXApp <init> (Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 
L193:   invokevirtual Method com/threerings/projectx/client/ProjectXApp startup ()V 
L196:   return 
L197:   
        .linenumbertable 
            L0 236 
            L8 242 
            L14 243 
            L20 247 
            L25 250 
            L27 251 
            L35 253 
            L39 254 
            L48 255 
            L50 256 
            L60 257 
            L63 252 
            L69 262 
            L86 263 
            L104 264 
            L111 265 
            L130 266 
            L149 267 
            L167 268 
            L174 269 
            L196 271 
        .end linenumbertable 
    .end code 
.end method 

.method public static cn : (Ljava/lang/String;)Ljava/io/File; 
    .code stack 4 locals 3 
L0:     ldc 'appdir' 
L2:     invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L5:     dup 
L6:     astore_1 
L7:     invokestatic Method com/samskivert/util/aq Z (Ljava/lang/String;)Z 
L10:    ifeq L54 
L13:    ldc '.projectx' 
L15:    astore_1 
L16:    ldc 'user.home' 
L18:    invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L21:    dup 
L22:    astore_2 
L23:    invokestatic Method com/samskivert/util/aq Z (Ljava/lang/String;)Z 
L26:    ifne L54 
L29:    new java/lang/StringBuilder 
L32:    dup 
L33:    invokespecial Method java/lang/StringBuilder <init> ()V 
L36:    aload_2 
L37:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L40:    getstatic Field java/io/File separator Ljava/lang/String; 
L43:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L46:    aload_1 
L47:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L50:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L53:    astore_1 

        .stack append Object java/lang/String 
L54:    new java/io/File 
L57:    dup 
L58:    new java/lang/StringBuilder 
L61:    dup 
L62:    invokespecial Method java/lang/StringBuilder <init> ()V 
L65:    aload_1 
L66:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L69:    getstatic Field java/io/File separator Ljava/lang/String; 
L72:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L75:    aload_0 
L76:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L79:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L82:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L85:    areturn 
L86:    
        .linenumbertable 
            L0 278 
            L6 279 
            L13 280 
            L16 281 
            L22 282 
            L29 283 
            L54 286 
        .end linenumbertable 
    .end code 
.end method 

.method public static getLanguage : ()Ljava/lang/String; 
    .code stack 1 locals 0 
L0:     getstatic Field com/threerings/projectx/client/ProjectXApp _language Ljava/lang/String; 
L3:     areturn 
L4:     
        .linenumbertable 
            L0 294 
        .end linenumbertable 
    .end code 
.end method 

.method private <init> : (Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 
    .code stack 9 locals 12 
L0:     aload_0 
L1:     invokespecial Method com/threerings/opengl/n <init> ()V 
L4:     aload_0 
L5:     new com/samskivert/util/m 
L8:     dup 
L9:     ldc 'projectx' 
L11:    invokespecial Method com/samskivert/util/m <init> (Ljava/lang/String;)V 
L14:    putfield Field com/threerings/projectx/client/ProjectXApp akf Lcom/samskivert/util/m; 
L17:    aload_0 
L18:    bipush 60 
L20:    putfield Field com/threerings/projectx/client/ProjectXApp akg I 
L23:    aload_0 
L24:    invokestatic Method com/samskivert/util/ObserverList ge ()Lcom/samskivert/util/ObserverList; 
L27:    putfield Field com/threerings/projectx/client/ProjectXApp akG Lcom/samskivert/util/ObserverList; 
L30:    aload_0 
L31:    new com/samskivert/util/HashIntMap 
L34:    dup 
L35:    invokespecial Method com/samskivert/util/HashIntMap <init> ()V 
L38:    putfield Field com/threerings/projectx/client/ProjectXApp akI Lcom/samskivert/util/z; 
L41:    aload_0 
L42:    invokestatic Method com/google/common/collect/ImmutableSet of ()Lcom/google/common/collect/ImmutableSet; 
L45:    putfield Field com/threerings/projectx/client/ProjectXApp akT Ljava/util/Set; 
L48:    aload_0 
L49:    new com/google/common/eventbus/d 
L52:    dup 
L53:    ldc 'ctx' 
L55:    new com/threerings/projectx/client/dW 
L58:    dup 
L59:    aload_0 
L60:    invokespecial Method com/threerings/projectx/client/dW <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L63:    invokespecial Method com/google/common/eventbus/d <init> (Ljava/lang/String;Ljava/util/concurrent/Executor;)V 
L66:    putfield Field com/threerings/projectx/client/ProjectXApp akV Lcom/google/common/eventbus/g; 
L69:    aload_0 
L70:    new com/threerings/projectx/client/dX 
L73:    dup 
L74:    aload_0 
L75:    ldc 'scopeVariables' 
L77:    invokespecial Method com/threerings/projectx/client/dX <init> (Lcom/threerings/projectx/client/ProjectXApp;Ljava/lang/String;)V 
L80:    putfield Field com/threerings/projectx/client/ProjectXApp akW Lcom/threerings/presents/dobj/k; 
L83:    aload_0 
L84:    new com/threerings/projectx/client/dY 
L87:    dup 
L88:    aload_0 
L89:    invokespecial Method com/threerings/projectx/client/dY <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L92:    putfield Field com/threerings/projectx/client/ProjectXApp akX Lcom/threerings/presents/dobj/j; 
L95:    aload_0 
L96:    new com/threerings/projectx/client/dZ 
L99:    dup 
L100:   aload_0 
L101:   aload_0 
L102:   invokevirtual Method com/threerings/projectx/client/ProjectXApp getRunQueue ()Lcom/samskivert/util/al; 
L105:   invokespecial Method com/threerings/projectx/client/dZ <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/samskivert/util/al;)V 
L108:   putfield Field com/threerings/projectx/client/ProjectXApp akY Lcom/samskivert/util/E; 
L111:   aload_0 
L112:   new com/threerings/projectx/client/ea 
L115:   dup 
L116:   aload_0 
L117:   invokespecial Method com/threerings/projectx/client/ea <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L120:   putfield Field com/threerings/projectx/client/ProjectXApp akZ Ljava/lang/Runnable; 
L123:   aload_0 
L124:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs getLanguage ()Ljava/lang/String; 
L127:   invokespecial Method com/threerings/projectx/client/ProjectXApp cs (Ljava/lang/String;)V 
L130:   getstatic Field java/util/Locale ENGLISH Ljava/util/Locale; 
L133:   invokestatic Method java/util/Locale setDefault (Ljava/util/Locale;)V 
L136:   invokestatic Method com/threerings/projectx/util/a MP ()Z 
L139:   putstatic Field com/threerings/editor/m Gx Z 
L142:   aload_0 
L143:   getfield Field com/threerings/projectx/client/ProjectXApp _cfgmgr Lcom/threerings/config/ConfigManager; 
L146:   invokevirtual Method com/threerings/config/ConfigManager init ()V 
L149:   ldc 'getdown-pro-old.jar' 
L151:   invokestatic Method com/threerings/projectx/client/ProjectXApp cn (Ljava/lang/String;)Ljava/io/File; 
L154:   ldc 'getdown-pro.jar' 
L156:   invokestatic Method com/threerings/projectx/client/ProjectXApp cn (Ljava/lang/String;)Ljava/io/File; 
L159:   ldc 'code/getdown-pro-new.jar' 
L161:   invokestatic Method com/threerings/projectx/client/ProjectXApp cn (Ljava/lang/String;)Ljava/io/File; 
L164:   astore 11 
L166:   astore 10 
L168:   astore 9 
L170:   aload 11 
L172:   invokevirtual Method java/io/File exists ()Z 
L175:   ifeq L192 
L178:   aload 11 
L180:   invokevirtual Method java/io/File length ()J 
L183:   aload 10 
L185:   invokevirtual Method java/io/File length ()J 
L188:   lcmp 
L189:   ifne L195 
L192:   goto L462 
L195:   getstatic Field com/threerings/getdown/a KZ Lcom/a/c/n; 
L198:   new java/lang/StringBuilder 
L201:   dup 
L202:   ldc 'Updating Getdown with ' 
L204:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L207:   aload 11 
L209:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L212:   ldc '...' 
L214:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L217:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L220:   iconst_0 
L221:   anewarray java/lang/Object 
L224:   invokevirtual Method com/a/c/n a (Ljava/lang/Object;[Ljava/lang/Object;)V 
L227:   aload 9 
L229:   invokevirtual Method java/io/File exists ()Z 
L232:   ifeq L241 
L235:   aload 9 
L237:   invokevirtual Method java/io/File delete ()Z 
L240:   pop 
L241:   aload 10 
L243:   invokevirtual Method java/io/File exists ()Z 
L246:   ifeq L259 
L249:   aload 10 
L251:   aload 9 
L253:   invokevirtual Method java/io/File renameTo (Ljava/io/File;)Z 
L256:   ifeq L386 
L259:   aload 11 
L261:   aload 10 
L263:   invokevirtual Method java/io/File renameTo (Ljava/io/File;)Z 
L266:   ifeq L332 
L269:   aload 9 
L271:   invokevirtual Method java/io/File delete ()Z 
L274:   pop 
        .catch java/io/IOException from L275 to L297 using L300 
L275:   new java/io/FileInputStream 
L278:   dup 
L279:   aload 10 
L281:   invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V 
L284:   new java/io/FileOutputStream 
L287:   dup 
L288:   aload 11 
L290:   invokespecial Method java/io/FileOutputStream <init> (Ljava/io/File;)V 
L293:   invokestatic Method com/threerings/stage/client/a b (Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream; 
L296:   pop 
L297:   goto L462 
L300:   astore 9 
L302:   getstatic Field com/threerings/getdown/a KZ Lcom/a/c/n; 
L305:   new java/lang/StringBuilder 
L308:   dup 
L309:   ldc 'Error copying updated Getdown back: ' 
L311:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L314:   aload 9 
L316:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L319:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L322:   iconst_0 
L323:   anewarray java/lang/Object 
L326:   invokevirtual Method com/a/c/n b (Ljava/lang/Object;[Ljava/lang/Object;)V 
L329:   goto L462 
L332:   getstatic Field com/threerings/getdown/a KZ Lcom/a/c/n; 
L335:   new java/lang/StringBuilder 
L338:   dup 
L339:   ldc 'Unable to renameTo(' 
L341:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L344:   aload 9 
L346:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L349:   ldc ').' 
L351:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L354:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L357:   iconst_0 
L358:   anewarray java/lang/Object 
L361:   invokevirtual Method com/a/c/n b (Ljava/lang/Object;[Ljava/lang/Object;)V 
L364:   aload 9 
L366:   aload 10 
L368:   invokevirtual Method java/io/File renameTo (Ljava/io/File;)Z 
L371:   ifne L386 
L374:   getstatic Field com/threerings/getdown/a KZ Lcom/a/c/n; 
L377:   ldc 'Oh God, why dost thee scorn me so.' 
L379:   iconst_0 
L380:   anewarray java/lang/Object 
L383:   invokevirtual Method com/a/c/n b (Ljava/lang/Object;[Ljava/lang/Object;)V 
L386:   getstatic Field com/threerings/getdown/a KZ Lcom/a/c/n; 
L389:   new java/lang/StringBuilder 
L392:   dup 
L393:   ldc 'Attempting to upgrade by copying over ' 
L395:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L398:   aload 10 
L400:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L403:   ldc '...' 
L405:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L408:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L411:   iconst_0 
L412:   anewarray java/lang/Object 
L415:   invokevirtual Method com/a/c/n a (Ljava/lang/Object;[Ljava/lang/Object;)V 
        .catch java/io/IOException from L418 to L440 using L443 
L418:   new java/io/FileInputStream 
L421:   dup 
L422:   aload 11 
L424:   invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V 
L427:   new java/io/FileOutputStream 
L430:   dup 
L431:   aload 10 
L433:   invokespecial Method java/io/FileOutputStream <init> (Ljava/io/File;)V 
L436:   invokestatic Method com/threerings/stage/client/a b (Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream; 
L439:   pop 
L440:   goto L462 
L443:   astore 9 
L445:   getstatic Field com/threerings/getdown/a KZ Lcom/a/c/n; 
L448:   ldc 'Mayday! Brute force copy method also failed.' 
L450:   iconst_1 
L451:   anewarray java/lang/Object 
L454:   dup 
L455:   iconst_0 
L456:   aload 9 
L458:   aastore 
L459:   invokevirtual Method com/a/c/n b (Ljava/lang/Object;[Ljava/lang/Object;)V 
L462:   aload_0 
L463:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs l (Lcom/threerings/projectx/util/A;)V 
L466:   aload_0 
L467:   astore 9 
L469:   iconst_0 
L470:   istore 10 
L472:   ldc 'reset_video' 
L474:   invokestatic Method java/lang/Boolean getBoolean (Ljava/lang/String;)Z 
L477:   ifeq L495 
L480:   getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/U; 
L483:   ldc 'Resetting video!' 
L485:   iconst_0 
L486:   anewarray java/lang/Object 
L489:   invokevirtual Method com/samskivert/util/U e (Ljava/lang/Object;[Ljava/lang/Object;)V 
L492:   iconst_1 
L493:   istore 10 
L495:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs xz ()I 
L498:   iconst_2 
L499:   if_icmple L520 
L502:   getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/U; 
L505:   ldc 'Resetting video due to like issue with startup count.' 
L507:   iconst_0 
L508:   anewarray java/lang/Object 
L511:   invokevirtual Method com/samskivert/util/U e (Ljava/lang/Object;[Ljava/lang/Object;)V 
L514:   iconst_1 
L515:   istore 10 
L517:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs xA ()V 
        .catch java/lang/Exception from L520 to L560 using L563 
L520:   ldc 'resetvideo.now' 
L522:   invokestatic Method com/threerings/projectx/client/ProjectXApp cn (Ljava/lang/String;)Ljava/io/File; 
L525:   dup 
L526:   astore 11 
L528:   invokevirtual Method java/io/File exists ()Z 
L531:   ifeq L560 
L534:   aload 11 
L536:   invokevirtual Method java/io/File delete ()Z 
L539:   ifeq L548 
L542:   iconst_1 
L543:   istore 10 
L545:   goto L582 
L548:   getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/U; 
L551:   ldc 'Video mode not reset because file is not deletable.' 
L553:   iconst_0 
L554:   anewarray java/lang/Object 
L557:   invokevirtual Method com/samskivert/util/U f (Ljava/lang/Object;[Ljava/lang/Object;)V 
L560:   goto L582 
L563:   astore 11 
L565:   getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/U; 
L568:   ldc 'Video mode not reset.' 
L570:   iconst_1 
L571:   anewarray java/lang/Object 
L574:   dup 
L575:   iconst_0 
L576:   aload 11 
L578:   aastore 
L579:   invokevirtual Method com/samskivert/util/U f (Ljava/lang/Object;[Ljava/lang/Object;)V 
L582:   iload 10 
L584:   ifeq L599 
L587:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs$d yu ()Lcom/threerings/projectx/client/ProjectXPrefs$d; 
L590:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs a (Lcom/threerings/projectx/client/ProjectXPrefs$d;)V 
L593:   aload 9 
L595:   iconst_1 
L596:   putfield Field com/threerings/projectx/client/ProjectXApp akU Z 
L599:   aconst_null 
L600:   astore 9 
L602:   aload_1 
L603:   ifnull L632 
L606:   aload_2 
L607:   ifnull L632 
L610:   new com/threerings/projectx/data/ProjectXCredentials 
L613:   dup 
L614:   new com/threerings/util/Name 
L617:   dup 
L618:   aload_1 
L619:   invokespecial Method com/threerings/util/Name <init> (Ljava/lang/String;)V 
L622:   aload_2 
L623:   iload_3 
L624:   invokespecial Method com/threerings/projectx/data/ProjectXCredentials <init> (Lcom/threerings/util/Name;Ljava/lang/String;Z)V 
L627:   astore 9 
L629:   goto L681 

        .stack full 
            locals Object com/threerings/projectx/client/ProjectXApp Object java/lang/String Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object com/threerings/projectx/data/ProjectXCredentials 
            stack 
        .end stack 
L632:   aload_1 
L633:   ifnull L659 
L636:   aload 7 
L638:   invokestatic Method com/samskivert/util/aq Z (Ljava/lang/String;)Z 
L641:   ifne L659 
L644:   new com/threerings/projectx/data/ProjectXCredentials 
L647:   dup 
L648:   aload 7 
L650:   aload_1 
L651:   invokespecial Method com/threerings/projectx/data/ProjectXCredentials <init> (Ljava/lang/String;Ljava/lang/String;)V 
L654:   astore 9 
L656:   goto L681 

        .stack same 
L659:   invokestatic Method com/threerings/projectx/util/a Nr ()Z 
L662:   ifeq L681 
L665:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs xI ()Z 
L668:   ifeq L681 
L671:   new com/threerings/projectx/data/ProjectXCredentials 
L674:   dup 
L675:   iconst_1 
L676:   invokespecial Method com/threerings/projectx/data/ProjectXCredentials <init> (Z)V 
L679:   astore 9 

        .stack same 
L681:   aload_0 
L682:   new com/threerings/projectx/client/du 
L685:   dup 
L686:   aload_0 
L687:   aload 9 
L689:   aload_0 
L690:   invokevirtual Method com/threerings/projectx/client/ProjectXApp getRunQueue ()Lcom/samskivert/util/al; 
L693:   invokespecial Method com/threerings/projectx/client/du <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/presents/net/Credentials;Lcom/samskivert/util/al;)V 
L696:   putfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L699:   aload_0 
L700:   aload 4 
L702:   putfield Field com/threerings/projectx/client/ProjectXApp akB Ljava/lang/String; 
L705:   aload_0 
L706:   aload 5 
L708:   putfield Field com/threerings/projectx/client/ProjectXApp akC Ljava/lang/String; 
L711:   aload_0 
L712:   aload 6 
L714:   putfield Field com/threerings/projectx/client/ProjectXApp akD Ljava/lang/String; 
L717:   aload_0 
L718:   getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L721:   invokestatic Method com/threerings/projectx/util/a ls ()J 
L724:   invokestatic Method java/lang/String valueOf (J)Ljava/lang/String; 
L727:   invokevirtual Method com/threerings/presents/client/Client setVersion (Ljava/lang/String;)V 
L730:   aload_0 
L731:   getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L734:   ldc 'presents.admin' 
L736:   invokevirtual Method com/threerings/presents/client/Client bH (Ljava/lang/String;)V 
L739:   aload_0 
L740:   getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L743:   invokestatic Method com/threerings/projectx/util/a MY ()Ljava/lang/String; 
L746:   invokevirtual Method com/threerings/presents/client/Client bG (Ljava/lang/String;)Z 
L749:   pop 
L750:   aload_0 
L751:   getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L754:   iconst_1 
L755:   invokevirtual Method com/threerings/presents/client/Client C (Z)V 
L758:   aload_0 
L759:   getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L762:   new com/threerings/projectx/client/dI 
L765:   dup 
L766:   aload_0 
L767:   invokespecial Method com/threerings/projectx/client/dI <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L770:   invokevirtual Method com/threerings/presents/client/Client b (Lcom/threerings/presents/client/L;)V 
L773:   aload_0 
L774:   new com/threerings/projectx/client/ei 
L777:   dup 
L778:   aload_0 
L779:   invokespecial Method com/threerings/projectx/client/ei <init> (Lcom/threerings/projectx/util/A;)V 
L782:   putfield Field com/threerings/projectx/client/ProjectXApp aki Lcom/threerings/projectx/client/ei; 
L785:   aload_0 
L786:   new com/threerings/crowd/client/o 
L789:   dup 
L790:   aload_0 
L791:   invokespecial Method com/threerings/crowd/client/o <init> (Lcom/threerings/presents/b/b;)V 
L794:   putfield Field com/threerings/projectx/client/ProjectXApp akj Lcom/threerings/crowd/client/o; 
L797:   aload_0 
L798:   new com/threerings/projectx/client/dV 
L801:   dup 
L802:   aload_0 
L803:   aload_0 
L804:   invokespecial Method com/threerings/projectx/client/dV <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/projectx/util/A;)V 
L807:   putfield Field com/threerings/projectx/client/ProjectXApp akk Lcom/threerings/projectx/client/chat/ProjectXChatDirector; 
L810:   aload_0 
L811:   new com/threerings/whirled/a/d 
L814:   dup 
L815:   aload_0 
L816:   aload_0 
L817:   getfield Field com/threerings/projectx/client/ProjectXApp aki Lcom/threerings/projectx/client/ei; 
L820:   aload_0 
L821:   astore 9 
L823:   ldc 'scenes' 
L825:   invokestatic Method com/threerings/projectx/client/ProjectXApp cn (Ljava/lang/String;)Ljava/io/File; 
L828:   dup 
L829:   astore 10 
L831:   invokevirtual Method java/io/File isDirectory ()Z 
L834:   ifne L857 
L837:   aload 10 
L839:   invokevirtual Method java/io/File exists ()Z 
L842:   ifeq L851 
L845:   aload 10 
L847:   invokevirtual Method java/io/File delete ()Z 
L850:   pop 
L851:   aload 10 
L853:   invokevirtual Method java/io/File mkdirs ()Z 
L856:   pop 
L857:   new com/threerings/projectx/client/dF 
L860:   dup 
L861:   aload 9 
L863:   aload 10 
L865:   invokespecial Method com/threerings/projectx/client/dF <init> (Lcom/threerings/projectx/client/ProjectXApp;Ljava/io/File;)V 
L868:   new com/threerings/tudey/util/n 
L871:   dup 
L872:   invokespecial Method com/threerings/tudey/util/n <init> ()V 
L875:   invokespecial Method com/threerings/whirled/a/d <init> (Lcom/threerings/presents/b/b;Lcom/threerings/crowd/client/d;Lcom/threerings/whirled/a/a/a;Lcom/threerings/whirled/util/a;)V 
L878:   putfield Field com/threerings/projectx/client/ProjectXApp akl Lcom/threerings/whirled/a/d; 
L881:   aload_0 
L882:   new com/threerings/projectx/client/ex 
L885:   dup 
L886:   aload_0 
L887:   invokespecial Method com/threerings/projectx/client/ex <init> (Lcom/threerings/projectx/util/A;)V 
L890:   putfield Field com/threerings/projectx/client/ProjectXApp akn Lcom/threerings/projectx/client/ex; 
L893:   aload_0 
L894:   new com/threerings/projectx/client/fq 
L897:   dup 
L898:   aload_0 
L899:   ldc 'zoneGeneralOid' 
L901:   getstatic Field com/threerings/projectx/data/ChatType ZONE_GENERAL Lcom/threerings/projectx/data/ChatType; 
L904:   invokevirtual Method com/threerings/projectx/data/ChatType toString ()Ljava/lang/String; 
L907:   invokespecial Method com/threerings/projectx/client/fq <init> (Lcom/threerings/projectx/util/A;Ljava/lang/String;Ljava/lang/String;)V 
L910:   putfield Field com/threerings/projectx/client/ProjectXApp ako Lcom/threerings/projectx/client/fq; 
L913:   aload_0 
L914:   new com/threerings/projectx/client/fq 
L917:   dup 
L918:   aload_0 
L919:   ldc 'zoneTradeOid' 
L921:   getstatic Field com/threerings/projectx/data/ChatType ZONE_TRADE Lcom/threerings/projectx/data/ChatType; 
L924:   invokevirtual Method com/threerings/projectx/data/ChatType toString ()Ljava/lang/String; 
L927:   invokespecial Method com/threerings/projectx/client/fq <init> (Lcom/threerings/projectx/util/A;Ljava/lang/String;Ljava/lang/String;)V 
L930:   putfield Field com/threerings/projectx/client/ProjectXApp akp Lcom/threerings/projectx/client/fq; 
L933:   invokestatic Method com/threerings/projectx/util/a MP ()Z 
L936:   ifeq L950 
L939:   new com/threerings/config/dist/a/a 
L942:   aload_0 
L943:   aload_0 
L944:   getfield Field com/threerings/projectx/client/ProjectXApp _cfgmgr Lcom/threerings/config/ConfigManager; 
L947:   invokespecial Method com/threerings/config/dist/a/a <init> (Lcom/threerings/presents/b/b;Lcom/threerings/config/ConfigManager;)V 

        .stack same_extended 
L950:   aload_0 
L951:   new com/threerings/projectx/social/client/n 
L954:   dup 
L955:   aload_0 
L956:   invokespecial Method com/threerings/projectx/social/client/n <init> (Lcom/threerings/projectx/util/A;)V 
L959:   putfield Field com/threerings/projectx/client/ProjectXApp akq Lcom/threerings/projectx/social/client/n; 
L962:   aload_0 
L963:   new com/threerings/projectx/admin/client/b 
L966:   dup 
L967:   aload_0 
L968:   invokespecial Method com/threerings/projectx/admin/client/b <init> (Lcom/threerings/projectx/util/A;)V 
L971:   putfield Field com/threerings/projectx/client/ProjectXApp akr Lcom/threerings/projectx/admin/client/b; 
L974:   aload_0 
L975:   new com/threerings/projectx/guild/client/L 
L978:   dup 
L979:   aload_0 
L980:   invokespecial Method com/threerings/projectx/guild/client/L <init> (Lcom/threerings/projectx/util/A;)V 
L983:   putfield Field com/threerings/projectx/client/ProjectXApp aks Lcom/threerings/projectx/guild/client/L; 
L986:   aload_0 
L987:   new com/threerings/projectx/guild/client/az 
L990:   dup 
L991:   aload_0 
L992:   invokespecial Method com/threerings/projectx/guild/client/az <init> (Lcom/threerings/projectx/util/A;)V 
L995:   putfield Field com/threerings/projectx/client/ProjectXApp akt Lcom/threerings/projectx/guild/client/az; 
L998:   aload_0 
L999:   new com/threerings/projectx/dungeon/client/R 
L1002:  dup 
L1003:  aload_0 
L1004:  invokespecial Method com/threerings/projectx/dungeon/client/R <init> (Lcom/threerings/projectx/util/A;)V 
L1007:  putfield Field com/threerings/projectx/client/ProjectXApp aku Lcom/threerings/projectx/dungeon/client/R; 
L1010:  aload_0 
L1011:  new com/threerings/projectx/client/dj 
L1014:  dup 
L1015:  aload_0 
L1016:  invokespecial Method com/threerings/projectx/client/dj <init> (Lcom/threerings/projectx/util/A;)V 
L1019:  putfield Field com/threerings/projectx/client/ProjectXApp akv Lcom/threerings/projectx/client/dj; 
L1022:  aload_0 
L1023:  new com/threerings/projectx/partner/client/SteamDirector 
L1026:  dup 
L1027:  aload_0 
L1028:  aload 8 
L1030:  invokespecial Method com/threerings/projectx/partner/client/SteamDirector <init> (Lcom/threerings/projectx/util/A;Ljava/lang/String;)V 
L1033:  putfield Field com/threerings/projectx/client/ProjectXApp akw Lcom/threerings/projectx/partner/client/SteamDirector; 
L1036:  aload_0 
L1037:  dup 
L1038:  astore_1 
L1039:  iconst_1 
L1040:  invokespecial Method com/threerings/projectx/client/ProjectXApp av (Z)V 
L1043:  invokestatic Method com/samskivert/util/ak gm ()Z 
L1046:  ifeq L1065 
L1049:  aload_0 
L1050:  iconst_1 
L1051:  anewarray java/lang/String 
L1054:  dup 
L1055:  iconst_0 
L1056:  ldc 'ui/icon/icon_128.png' 
L1058:  aastore 
L1059:  invokevirtual Method com/threerings/projectx/client/ProjectXApp setIcon ([Ljava/lang/String;)V 
L1062:  goto L1105 

        .stack same_extended 
L1065:  invokestatic Method com/samskivert/util/ak gn ()Z 
L1068:  ifeq L1087 
L1071:  aload_0 
L1072:  iconst_1 
L1073:  anewarray java/lang/String 
L1076:  dup 
L1077:  iconst_0 
L1078:  ldc 'ui/icon/icon_32.png' 
L1080:  aastore 
L1081:  invokevirtual Method com/threerings/projectx/client/ProjectXApp setIcon ([Ljava/lang/String;)V 
L1084:  goto L1105 

        .stack same 
L1087:  aload_0 
L1088:  iconst_2 
L1089:  anewarray java/lang/String 
L1092:  dup 
L1093:  iconst_0 
L1094:  ldc 'ui/icon/icon_32.png' 
L1096:  aastore 
L1097:  dup 
L1098:  iconst_1 
L1099:  ldc 'ui/icon/icon_16.png' 
L1101:  aastore 
L1102:  invokevirtual Method com/threerings/projectx/client/ProjectXApp setIcon ([Ljava/lang/String;)V 

        .stack same 
L1105:  aload_0 
L1106:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs n (Lcom/threerings/projectx/util/A;)Lcom/threerings/projectx/client/ProjectXPrefs$d; 
L1109:  aload_0 
L1110:  invokevirtual Method com/threerings/projectx/client/ProjectXPrefs$d p (Lcom/threerings/projectx/util/A;)V 
L1113:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs getVSyncEnabled ()Z 
L1116:  invokestatic Method org/lwjgl/opengl/Display setVSyncEnabled (Z)V 
L1119:  aload_0 
L1120:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs getCompatibilityMode ()Z 
L1123:  invokevirtual Method com/threerings/projectx/client/ProjectXApp setCompatibilityMode (Z)V 
L1126:  aload_0 
L1127:  aload_0 
L1128:  getfield Field com/threerings/projectx/client/ProjectXApp _compatibilityMode Z 
L1131:  ifne L1144 
L1134:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs getRenderEffects ()Z 
L1137:  ifeq L1144 
L1140:  iconst_1 
L1141:  goto L1145 

        .stack stack_1 Object com/threerings/projectx/client/ProjectXApp 
L1144:  iconst_0 

        .stack full 
            locals Object com/threerings/projectx/client/ProjectXApp Object java/lang/String Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object com/threerings/projectx/data/ProjectXCredentials 
            stack Object com/threerings/projectx/client/ProjectXApp Integer 
        .end stack 
L1145:  invokevirtual Method com/threerings/projectx/client/ProjectXApp setRenderEffects (Z)V 
L1148:  aload_0 
L1149:  getfield Field com/threerings/projectx/client/ProjectXApp _streamGain Lcom/threerings/expr/ag; 
L1152:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs xJ ()F 
L1155:  putfield Field com/threerings/expr/ag value F 
L1158:  aload_0 
L1159:  getfield Field com/threerings/projectx/client/ProjectXApp _soundmgr Lcom/threerings/openal/q; 
L1162:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs xK ()F 
L1165:  invokevirtual Method com/threerings/openal/q F (F)V 
L1168:  aload_0 
L1169:  new com/threerings/projectx/client/eh 
L1172:  dup 
L1173:  aload_0 
L1174:  invokespecial Method com/threerings/projectx/client/eh <init> (Lcom/threerings/projectx/util/A;)V 
L1177:  putfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eh; 
L1180:  aload_0 
L1181:  getfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eh; 
L1184:  new com/threerings/opengl/renderer/Color4f 
L1187:  dup 
L1188:  fconst_0 
L1189:  fconst_0 
L1190:  fconst_0 
L1191:  ldc +0.5f 
L1193:  invokespecial Method com/threerings/opengl/renderer/Color4f <init> (FFFF)V 
L1196:  invokevirtual Method com/threerings/projectx/client/eh setModalShade (Lcom/threerings/opengl/renderer/Color4f;)V 
L1199:  aload_0 
L1200:  getfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eh; 
L1203:  invokevirtual Method com/threerings/projectx/client/eh getSoundGroup ()Lcom/threerings/openal/p; 
L1206:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs xL ()F 
L1209:  invokevirtual Method com/threerings/openal/p F (F)V 
L1212:  aload_0 
L1213:  getfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eh; 
L1216:  invokestatic Method com/threerings/projectx/util/a MP ()Z 
L1219:  ifne L1229 
L1222:  invokestatic Method com/threerings/projectx/util/a MU ()Z 
L1225:  pop 
L1226:  goto L1233 

        .stack stack_1_extended Object com/threerings/projectx/client/eh 
L1229:  iconst_1 
L1230:  goto L1234 

        .stack stack_1 Object com/threerings/projectx/client/eh 
L1233:  iconst_0 

        .stack full 
            locals Object com/threerings/projectx/client/ProjectXApp Object java/lang/String Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object com/threerings/projectx/data/ProjectXCredentials 
            stack Object com/threerings/projectx/client/eh Integer 
        .end stack 
L1234:  invokevirtual Method com/threerings/projectx/client/eh setIMEComposingEnabled (Z)V 
L1237:  new com/threerings/projectx/client/ProjectXApp$c 
L1240:  dup 
L1241:  aload_0 
L1242:  invokespecial Method com/threerings/projectx/client/ProjectXApp$c <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L1245:  invokevirtual Method com/threerings/projectx/client/ProjectXApp$c start ()V 
L1248:  invokestatic Method com/samskivert/util/ak gm ()Z 
L1251:  ifeq L1294 
L1254:  aload_0 
L1255:  astore 9 
L1257:  invokestatic Method com/apple/eawt/Application getApplication ()Lcom/apple/eawt/Application; 
L1260:  dup 
L1261:  astore 10 
L1263:  ifnull L1294 
L1266:  aload 10 
L1268:  new com/threerings/projectx/client/dS 
L1271:  dup 
L1272:  aload 9 
L1274:  invokespecial Method com/threerings/projectx/client/dS <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L1277:  invokevirtual Method com/apple/eawt/Application setAboutHandler (Lcom/apple/eawt/AboutHandler;)V 
L1280:  aload 10 
L1282:  new com/threerings/projectx/client/dT 
L1285:  dup 
L1286:  aload 9 
L1288:  invokespecial Method com/threerings/projectx/client/dT <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L1291:  invokevirtual Method com/apple/eawt/Application setPreferencesHandler (Lcom/apple/eawt/PreferencesHandler;)V 

        .stack same 
L1294:  aload_0 
L1295:  new com/threerings/projectx/client/s 
L1298:  dup 
L1299:  aload_0 
L1300:  invokespecial Method com/threerings/projectx/client/s <init> (Lcom/threerings/projectx/util/A;)V 
L1303:  putfield Field com/threerings/projectx/client/ProjectXApp akS Lcom/threerings/projectx/client/s; 

        invokestatic Method sumguytho/common/ModManagerImpl get__Callback ()Lsumguytho/common/ModManagerImpl;
        dup
        dup
        aload_0
        getfield Field com/threerings/projectx/client/ProjectXApp akk Lcom/threerings/projectx/client/chat/ProjectXChatDirector; 
        invokevirtual Method sumguytho/common/ModManagerImpl setChatDir__Callback (Lcom/threerings/projectx/client/chat/ProjectXChatDirector;)V
        aload_0
        invokevirtual Method sumguytho/common/ModManagerImpl setProjXCtx__Callback (Lcom/threerings/projectx/util/A;)V
        invokevirtual Method sumguytho/common/ModManagerImpl init__Callback ()V

L1306:  return 
L1307:  
        .linenumbertable 
            L0 304 
            L4 2054 
            L17 2060 
            L23 2141 
            L30 2147 
            L41 2177 
            L48 2183 
            L69 2195 
            L83 2203 
            L95 2224 
            L111 2233 
            L123 306 
            L130 307 
            L136 310 
            L142 313 
            L149 316 
            L462 322 
            L466 323 
            L599 326 
            L602 327 
            L610 328 
            L632 330 
            L644 331 
            L659 333 
            L671 334 
            L681 336 
            L699 367 
            L705 368 
            L711 369 
            L717 372 
            L730 375 
            L739 378 
            L750 379 
            L758 382 
            L773 453 
            L785 454 
            L797 455 
            L810 471 
            L881 473 
            L893 474 
            L913 476 
            L933 478 
            L939 480 
            L950 482 
            L962 483 
            L974 484 
            L986 485 
            L998 486 
            L1010 487 
            L1022 488 
            L1036 491 
            L1043 492 
            L1049 493 
            L1065 494 
            L1071 495 
            L1087 497 
            L1105 501 
            L1113 502 
            L1119 503 
            L1126 504 
            L1148 507 
            L1158 508 
            L1168 511 
            L1180 512 
            L1199 513 
            L1212 514 
            L1237 518 
            L1248 521 
            L1254 522 
            L1294 526 
            L1306 527 
        .end linenumbertable 
    .end code 
.end method 

.method public final wK : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akB Ljava/lang/String; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 534 
        .end linenumbertable 
    .end code 
.end method 

.method public final co : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/threerings/projectx/client/ProjectXApp akB Ljava/lang/String; 
L5:     return 
L6:     
        .linenumbertable 
            L0 543 
            L5 544 
        .end linenumbertable 
    .end code 
.end method 

.method public final wL : ()Ljava/lang/String; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akC Ljava/lang/String; 
L4:     astore_1 
L5:     aload_0 
L6:     aconst_null 
L7:     putfield Field com/threerings/projectx/client/ProjectXApp akC Ljava/lang/String; 
L10:    aload_1 
L11:    areturn 
L12:    
        .linenumbertable 
            L0 551 
            L5 552 
            L10 553 
        .end linenumbertable 
    .end code 
.end method 

.method public final wM : ()Ljava/lang/String; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akD Ljava/lang/String; 
L4:     astore_1 
L5:     aload_0 
L6:     aconst_null 
L7:     putfield Field com/threerings/projectx/client/ProjectXApp akD Ljava/lang/String; 
L10:    aload_1 
L11:    areturn 
L12:    
        .linenumbertable 
            L0 562 
            L5 563 
            L10 564 
        .end linenumbertable 
    .end code 
.end method 

.method public final wN : ()Lcom/threerings/projectx/client/ProjectXApp$b; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akF Lcom/threerings/projectx/client/ProjectXApp$b; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 573 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Lcom/threerings/projectx/client/ProjectXApp$a;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akG Lcom/samskivert/util/ObserverList; 
L4:     aload_1 
L5:     invokevirtual Method com/samskivert/util/ObserverList add (Ljava/lang/Object;)Z 
L8:     pop 
L9:     return 
L10:    
        .linenumbertable 
            L0 581 
            L9 582 
        .end linenumbertable 
    .end code 
.end method 

.method public final b : (Lcom/threerings/projectx/client/ProjectXApp$a;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akG Lcom/samskivert/util/ObserverList; 
L4:     aload_1 
L5:     invokevirtual Method com/samskivert/util/ObserverList remove (Ljava/lang/Object;)Z 
L8:     pop 
L9:     return 
L10:    
        .linenumbertable 
            L0 589 
            L9 590 
        .end linenumbertable 
    .end code 
.end method 

.method public final wO : ()Lcom/threerings/projectx/client/ag; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akh Lcom/threerings/projectx/client/ag; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 597 
        .end linenumbertable 
    .end code 
.end method 

.method public final wP : ()Lcom/threerings/projectx/client/aw; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp aky Lcom/threerings/projectx/client/aw; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 605 
        .end linenumbertable 
    .end code 
.end method 

.method public final c : (Lcom/threerings/opengl/gui/aE;)V 
    .code stack 5 locals 2 
L0:     aload_0 
L1:     new com/threerings/projectx/client/ui/W 
L4:     dup 
L5:     aload_0 
L6:     aload_1 
L7:     invokespecial Method com/threerings/projectx/client/ui/W <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/opengl/gui/aE;)V 
L10:    invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Lcom/threerings/opengl/q;)V 
L13:    return 
L14:    
        .linenumbertable 
            L0 613 
            L13 614 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Lcom/threerings/opengl/q;)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/opengl/q; 
L4:     ifnull L16 
L7:     aload_0 
L8:     getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/opengl/q; 
L11:    invokeinterface InterfaceMethod com/threerings/opengl/q wasRemoved ()V 1 

        .stack same 
L16:    aload_0 
L17:    aload_1 
L18:    dup_x1 
L19:    putfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/opengl/q; 
L22:    ifnull L34 
L25:    aload_0 
L26:    getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/opengl/q; 
L29:    invokeinterface InterfaceMethod com/threerings/opengl/q wasAdded ()V 1 

        .stack same 
L34:    return 
L35:    
        .linenumbertable 
            L0 621 
            L7 622 
            L16 624 
            L25 625 
            L34 627 
        .end linenumbertable 
    .end code 
.end method 

.method public final wQ : ()Lcom/threerings/opengl/q; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/opengl/q; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 634 
        .end linenumbertable 
    .end code 
.end method 

.method public final wR : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     iconst_1 
L2:     invokespecial Method com/threerings/projectx/client/ProjectXApp av (Z)V 
L5:     return 
L6:     
        .linenumbertable 
            L0 642 
            L5 643 
        .end linenumbertable 
    .end code 
.end method 

.method private av : (Z)V 
    .code stack 2 locals 4 
L0:     invokestatic Method com/threerings/projectx/util/a MO ()Ljava/lang/String; 
L3:     astore_2 
L4:     aload_0 
L5:     invokevirtual Method com/threerings/projectx/client/ProjectXApp uk ()Lcom/threerings/projectx/data/PlayerObject; 
L8:     dup 
L9:     astore_3 
L10:    ifnull L24 
L13:    iload_1 
L14:    ifeq L24 
L17:    aload_3 
L18:    getfield Field com/threerings/projectx/data/PlayerObject knight Lcom/threerings/util/Name; 
L21:    goto L25 

        .stack append Object java/lang/String Object com/threerings/projectx/data/PlayerObject 
L24:    aconst_null 

        .stack stack_1 Object com/threerings/util/Name 
L25:    dup 
L26:    astore_1 
L27:    ifnonnull L34 
L30:    aload_2 
L31:    goto L57 

        .stack append Object com/threerings/util/Name 
L34:    new java/lang/StringBuilder 
L37:    dup 
L38:    invokespecial Method java/lang/StringBuilder <init> ()V 
L41:    aload_2 
L42:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L45:    ldc ' - ' 
L47:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L50:    aload_1 
L51:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L54:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 

        .stack stack_1 Object java/lang/String 
L57:    invokestatic Method org/lwjgl/opengl/Display setTitle (Ljava/lang/String;)V 
L60:    invokestatic Method com/threerings/projectx/util/E NB ()Lcom/threerings/projectx/util/E; 
L63:    aload_1 
L64:    invokevirtual Method com/threerings/projectx/util/E p (Lcom/threerings/util/Name;)V 
L67:    return 
L68:    
        .linenumbertable 
            L0 652 
            L4 653 
            L9 654 
            L26 655 
            L60 656 
            L67 657 
        .end linenumbertable 
    .end code 
.end method 

.method public final c : (Ljava/lang/String;FF)V 
    .code stack 5 locals 4 
L0:     aload_0 
L1:     aload_1 
L2:     fload_2 
L3:     fload_3 
L4:     iconst_1 
L5:     invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Ljava/lang/String;FFZ)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 668 
            L8 669 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Ljava/lang/String;FFZ)V 
    .code stack 5 locals 5 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _soundmgr Lcom/threerings/openal/q; 
L4:     invokevirtual Method com/threerings/openal/q isInitialized ()Z 
L7:     ifne L11 
L10:    return 

        .stack same 
L11:    aload_0 
L12:    fload_3 
L13:    invokevirtual Method com/threerings/projectx/client/ProjectXApp I (F)V 
L16:    aload_0 
L17:    aload_0 
L18:    aload_1 
L19:    fload_2 
L20:    iload 4 
L22:    invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Ljava/lang/String;FZ)Lcom/threerings/openal/m; 
L25:    putfield Field com/threerings/projectx/client/ProjectXApp akH Lcom/threerings/openal/m; 
L28:    aload_0 
L29:    getfield Field com/threerings/projectx/client/ProjectXApp akH Lcom/threerings/openal/m; 
L32:    ifnonnull L36 
L35:    return 

        .stack same 
L36:    fload_3 
L37:    fconst_0 
L38:    fcmpl 
L39:    ifle L51 
L42:    aload_0 
L43:    getfield Field com/threerings/projectx/client/ProjectXApp akH Lcom/threerings/openal/m; 
L46:    fload_3 
L47:    invokevirtual Method com/threerings/openal/m M (F)V 
L50:    return 

        .stack same 
L51:    aload_0 
L52:    getfield Field com/threerings/projectx/client/ProjectXApp akH Lcom/threerings/openal/m; 
L55:    invokevirtual Method com/threerings/openal/m play ()V 

        .stack same 
L58:    return 
L59:    
        .linenumbertable 
            L0 681 
            L10 682 
            L11 684 
            L16 685 
            L28 686 
            L35 687 
            L36 689 
            L42 690 
            L51 692 
            L58 694 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Ljava/lang/String;FZ)Lcom/threerings/openal/m; 
    .code stack 7 locals 4 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _soundmgr Lcom/threerings/openal/q; 
L4:     invokevirtual Method com/threerings/openal/q isInitialized ()Z 
L7:     ifne L12 
L10:    aconst_null 
L11:    areturn 
        .catch java/io/IOException from L12 to L27 using L28 

        .stack same 
L12:    new com/threerings/projectx/client/eb 
L15:    dup 
L16:    aload_0 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/ProjectXApp _soundmgr Lcom/threerings/openal/q; 
L21:    aload_1 
L22:    iload_3 
L23:    fload_2 
L24:    invokespecial Method com/threerings/projectx/client/eb <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/openal/q;Ljava/lang/String;ZF)V 
L27:    areturn 

        .stack stack_1 Object java/io/IOException 
L28:    astore_2 
L29:    getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/U; 
L32:    ldc 'Failed to play stream.' 
L34:    iconst_3 
L35:    anewarray java/lang/Object 
L38:    dup 
L39:    iconst_0 
L40:    ldc 'path' 
L42:    aastore 
L43:    dup 
L44:    iconst_1 
L45:    aload_1 
L46:    aastore 
L47:    dup 
L48:    iconst_2 
L49:    aload_2 
L50:    aastore 
L51:    invokevirtual Method com/samskivert/util/U f (Ljava/lang/Object;[Ljava/lang/Object;)V 
L54:    aconst_null 
L55:    areturn 
L56:    
        .linenumbertable 
            L0 703 
            L10 704 
            L12 707 
            L28 720 
            L29 721 
            L54 722 
        .end linenumbertable 
    .end code 
.end method 

.method public final b : (Ljava/lang/String;FZ)Lcom/threerings/openal/B; 
    .code stack 8 locals 4 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _soundmgr Lcom/threerings/openal/q; 
L4:     invokevirtual Method com/threerings/openal/q isInitialized ()Z 
L7:     ifne L12 
L10:    aconst_null 
L11:    areturn 
        .catch java/io/IOException from L12 to L30 using L31 

        .stack same 
L12:    new com/threerings/projectx/client/ec 
L15:    dup 
L16:    aload_0 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/ProjectXApp _soundmgr Lcom/threerings/openal/q; 
L21:    aload_1 
L22:    iconst_1 
L23:    ldc 'default' 
L25:    ldc +0.5f 
L27:    invokespecial Method com/threerings/projectx/client/ec <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/openal/q;Ljava/lang/String;ZLjava/lang/String;F)V 
L30:    areturn 

        .stack stack_1 Object java/io/IOException 
L31:    astore_2 
L32:    getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/U; 
L35:    ldc 'Failed to play stream.' 
L37:    iconst_3 
L38:    anewarray java/lang/Object 
L41:    dup 
L42:    iconst_0 
L43:    ldc 'path' 
L45:    aastore 
L46:    dup 
L47:    iconst_1 
L48:    aload_1 
L49:    aastore 
L50:    dup 
L51:    iconst_2 
L52:    aload_2 
L53:    aastore 
L54:    invokevirtual Method com/samskivert/util/U f (Ljava/lang/Object;[Ljava/lang/Object;)V 
L57:    aconst_null 
L58:    areturn 
L59:    
        .linenumbertable 
            L0 732 
            L10 733 
            L12 736 
            L31 749 
            L32 750 
            L57 751 
        .end linenumbertable 
    .end code 
.end method 

.method public final I : (F)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akH Lcom/threerings/openal/m; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/threerings/projectx/client/ProjectXApp akH Lcom/threerings/openal/m; 
L12:    invokevirtual Method com/threerings/openal/m isPlaying ()Z 
L15:    ifeq L43 
L18:    fload_1 
L19:    fconst_0 
L20:    fcmpl 
L21:    ifle L36 
L24:    aload_0 
L25:    getfield Field com/threerings/projectx/client/ProjectXApp akH Lcom/threerings/openal/m; 
L28:    fload_1 
L29:    iconst_1 
L30:    invokevirtual Method com/threerings/openal/m b (FZ)V 
L33:    goto L43 

        .stack same 
L36:    aload_0 
L37:    getfield Field com/threerings/projectx/client/ProjectXApp akH Lcom/threerings/openal/m; 
L40:    invokevirtual Method com/threerings/openal/m dispose ()V 

        .stack same 
L43:    aload_0 
L44:    aconst_null 
L45:    putfield Field com/threerings/projectx/client/ProjectXApp akH Lcom/threerings/openal/m; 
L48:    return 
L49:    
        .linenumbertable 
            L0 762 
            L7 763 
            L8 765 
            L18 766 
            L24 767 
            L36 769 
            L43 772 
            L48 773 
        .end linenumbertable 
    .end code 
.end method 

.method public final wS : ()V 
    .code stack 6 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akq Lcom/threerings/projectx/social/client/n; 
L4:     invokevirtual Method com/threerings/projectx/social/client/n KR ()Lcom/threerings/projectx/client/ui/S; 
L7:     dup 
L8:     astore_1 
L9:     ifnonnull L67 
L12:    aload_0 
L13:    invokevirtual Method com/threerings/projectx/client/ProjectXApp uk ()Lcom/threerings/projectx/data/PlayerObject; 
L16:    getfield Field com/threerings/projectx/data/PlayerObject availableKnights [Lcom/threerings/projectx/data/AvailableKnight; 
L19:    arraylength 
L20:    ifne L38 
L23:    aload_0 
L24:    new com/threerings/projectx/client/eE 
L27:    dup 
L28:    aload_0 
L29:    iconst_1 
L30:    aconst_null 
L31:    invokespecial Method com/threerings/projectx/client/eE <init> (Lcom/threerings/projectx/util/A;ZLcom/threerings/util/Name;)V 
L34:    invokevirtual Method com/threerings/projectx/client/ProjectXApp c (Lcom/threerings/opengl/gui/aE;)V 
L37:    return 

        .stack append Object com/threerings/opengl/gui/aE 
L38:    aload_0 
L39:    getfield Field com/threerings/projectx/client/ProjectXApp akF Lcom/threerings/projectx/client/ProjectXApp$b; 
L42:    ifnonnull L57 
L45:    new com/threerings/projectx/client/cW 
L48:    dup 
L49:    aload_0 
L50:    invokespecial Method com/threerings/projectx/client/cW <init> (Lcom/threerings/projectx/util/A;)V 
L53:    astore_1 
L54:    goto L67 

        .stack same 
L57:    new com/threerings/projectx/client/ed 
L60:    dup 
L61:    aload_0 
L62:    aload_0 
L63:    invokespecial Method com/threerings/projectx/client/ed <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/projectx/util/A;)V 
L66:    astore_1 

        .stack same 
L67:    aload_0 
L68:    aload_1 
L69:    invokevirtual Method com/threerings/projectx/client/ProjectXApp c (Lcom/threerings/opengl/gui/aE;)V 
L72:    return 
L73:    
        .linenumbertable 
            L0 789 
            L8 790 
            L12 791 
            L23 792 
            L37 793 
            L38 795 
            L45 796 
            L57 798 
            L67 805 
            L72 806 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Lcom/threerings/tudey/data/TudeySceneModel;)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akI Lcom/samskivert/util/z; 
L4:     aload_1 
L5:     getfield Field com/threerings/tudey/data/TudeySceneModel sceneId I 
L8:     aload_1 
L9:     invokeinterface InterfaceMethod com/samskivert/util/z put (ILjava/lang/Object;)Ljava/lang/Object; 3 
L14:    pop 
L15:    return 
L16:    
        .linenumbertable 
            L0 814 
            L15 815 
        .end linenumbertable 
    .end code 
.end method 

.method public final d : (Ljava/lang/String;[I[I)V 
    .code stack 5 locals 5 
L0:     aload_0 
L1:     iconst_1 
L2:     putfield Field com/threerings/projectx/client/ProjectXApp akJ Z 
L5:     new com/threerings/projectx/client/ee 
L8:     dup 
L9:     aload_0 
L10:    invokespecial Method com/threerings/projectx/client/ee <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L13:    astore 4 
L15:    aload_0 
L16:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L19:    aload_1 
L20:    aload_2 
L21:    aload_3 
L22:    aload 4 
L24:    invokevirtual Method com/threerings/presents/client/Client a (Ljava/lang/String;[I[ILcom/threerings/presents/client/D;)V 
L27:    return 
L28:    
        .linenumbertable 
            L0 822 
            L5 823 
            L15 832 
            L27 833 
        .end linenumbertable 
    .end code 
.end method 

.method public final wT : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akJ Z 
L4:     ireturn 
L5:     
        .linenumbertable 
            L0 840 
        .end linenumbertable 
    .end code 
.end method 

.method public final wU : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokespecial Method com/threerings/opengl/n shutdown ()V 
L4:     return 
L5:     
        .linenumbertable 
            L0 848 
            L4 849 
        .end linenumbertable 
    .end code 
.end method 

.method public final cp : (Ljava/lang/String;)Z 
    .code stack 7 locals 4 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L4:     invokevirtual Method com/threerings/presents/client/Client isLoggedOn ()Z 
L7:     ifne L31 
L10:    aload_0 
L11:    aload_1 
L12:    invokevirtual Method com/threerings/projectx/client/ProjectXApp cr (Ljava/lang/String;)V 
L15:    aload_0 
L16:    new com/threerings/projectx/client/cj 
L19:    dup 
L20:    aload_0 
L21:    aconst_null 
L22:    iconst_1 
L23:    invokespecial Method com/threerings/projectx/client/cj <init> (Lcom/threerings/projectx/util/A;Ljava/lang/String;Z)V 
L26:    invokevirtual Method com/threerings/projectx/client/ProjectXApp c (Lcom/threerings/opengl/gui/aE;)V 
L29:    iconst_0 
L30:    ireturn 

        .stack same 
L31:    aload_0 
L32:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L35:    invokevirtual Method com/threerings/presents/client/Client pq ()Lcom/threerings/presents/net/Credentials; 
L38:    checkcast com/threerings/projectx/data/ProjectXCredentials 
L41:    astore_2 
L42:    aload_0 
L43:    invokevirtual Method com/threerings/projectx/client/ProjectXApp uk ()Lcom/threerings/projectx/data/PlayerObject; 
L46:    getfield Field com/threerings/projectx/data/PlayerObject knight Lcom/threerings/util/Name; 
L49:    astore_3 
L50:    aload_0 
L51:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L54:    new com/threerings/projectx/client/ef 
L57:    dup 
L58:    aload_0 
L59:    aload_1 
L60:    aload_2 
L61:    aload_3 
L62:    invokespecial Method com/threerings/projectx/client/ef <init> (Lcom/threerings/projectx/client/ProjectXApp;Ljava/lang/String;Lcom/threerings/projectx/data/ProjectXCredentials;Lcom/threerings/util/Name;)V 
L65:    invokevirtual Method com/threerings/presents/client/Client b (Lcom/threerings/presents/client/L;)V 
L68:    aload_0 
L69:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L72:    iconst_0 
L73:    invokevirtual Method com/threerings/presents/client/Client D (Z)Z 
L76:    pop 
L77:    iconst_1 
L78:    ireturn 
L79:    
        .linenumbertable 
            L0 858 
            L10 859 
            L15 860 
            L29 861 
            L31 863 
            L42 864 
            L50 865 
            L68 878 
            L77 879 
        .end linenumbertable 
    .end code 
.end method 

.method public final wV : ()Lcom/threerings/opengl/gui/c/b; 
    .code stack 5 locals 1 
L0:     new com/threerings/opengl/gui/c/c 
L3:     dup 
L4:     aload_0 
L5:     invokevirtual Method com/threerings/projectx/client/ProjectXApp getImageCache ()Lcom/threerings/opengl/util/f; 
L8:     ldc 'ui/icon/weblink.png' 
L10:    iconst_0 
L11:    anewarray com/threerings/media/image/a 
L14:    invokevirtual Method com/threerings/opengl/util/f getImage (Ljava/lang/String;[Lcom/threerings/media/image/a;)Lcom/threerings/opengl/gui/y; 
L17:    invokespecial Method com/threerings/opengl/gui/c/c <init> (Lcom/threerings/opengl/gui/y;)V 
L20:    areturn 
L21:    
        .linenumbertable 
            L0 887 
        .end linenumbertable 
    .end code 
.end method 

.method public final w : (Ljava/lang/String;Ljava/lang/String;)V 
    .code stack 6 locals 3 
L0:     aload_1 
L1:     ifnonnull L5 
L4:     return 
        .catch java/net/MalformedURLException from L5 to L18 using L19 

        .stack same 
L5:     aload_0 
L6:     new java/net/URL 
L9:     dup 
L10:    aload_1 
L11:    invokespecial Method java/net/URL <init> (Ljava/lang/String;)V 
L14:    aload_2 
L15:    invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Ljava/net/URL;Ljava/lang/String;)V 
L18:    return 

        .stack stack_1 Object java/net/MalformedURLException 
L19:    astore_2 
L20:    getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/U; 
L23:    ldc 'Invalid url.' 
L25:    iconst_3 
L26:    anewarray java/lang/Object 
L29:    dup 
L30:    iconst_0 
L31:    ldc 'url' 
L33:    aastore 
L34:    dup 
L35:    iconst_1 
L36:    aload_1 
L37:    aastore 
L38:    dup 
L39:    iconst_2 
L40:    aload_2 
L41:    aastore 
L42:    invokevirtual Method com/samskivert/util/U f (Ljava/lang/Object;[Ljava/lang/Object;)V 

        .stack same 
L45:    return 
L46:    
        .linenumbertable 
            L0 895 
            L4 896 
            L5 899 
            L18 902 
            L19 900 
            L20 901 
            L45 903 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Ljava/net/URL;Ljava/lang/String;)V 
    .code stack 6 locals 5 
L0:     aload_1 
L1:     ifnonnull L5 
L4:     return 

        .stack same 
L5:     invokestatic Method org/lwjgl/opengl/Display isFullscreen ()Z 
L8:     ifeq L42 
L11:    invokestatic Method com/threerings/froth/SteamAPI isInitialized ()Z 
L14:    ifeq L31 
L17:    invokestatic Method com/threerings/froth/SteamUtils isOverlayEnabled ()Z 
L20:    ifeq L31 
L23:    aload_1 
L24:    invokevirtual Method java/net/URL toString ()Ljava/lang/String; 
L27:    invokestatic Method com/threerings/froth/SteamFriends activateGameOverlayToWebPage (Ljava/lang/String;)V 
L30:    return 

        .stack same 
L31:    invokestatic Method com/samskivert/util/ak gm ()Z 
L34:    ifeq L42 
L37:    aload_0 
L38:    iconst_0 
L39:    invokevirtual Method com/threerings/projectx/client/ProjectXApp setFullscreen (Z)V 

        .stack same 
L42:    aload_1 
L43:    new com/threerings/projectx/client/eg 
L46:    dup 
L47:    aload_0 
L48:    aload_2 
L49:    aload_1 
L50:    invokespecial Method com/threerings/projectx/client/eg <init> (Lcom/threerings/projectx/client/ProjectXApp;Ljava/lang/String;Ljava/net/URL;)V 
L53:    ldc 'xdg-open' 
L55:    astore_3 
L56:    astore_2 
L57:    astore_1 
L58:    invokestatic Method com/samskivert/util/ak gl ()Z 
L61:    ifeq L203 
L64:    ldc 'os.name' 
L66:    invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L69:    dup 
L70:    astore 4 
L72:    ldc '9' 
L74:    invokevirtual Method java/lang/String indexOf (Ljava/lang/String;)I 
L77:    iconst_m1 
L78:    if_icmpne L92 
L81:    aload 4 
L83:    ldc 'Me' 
L85:    invokevirtual Method java/lang/String indexOf (Ljava/lang/String;)I 
L88:    iconst_m1 
L89:    if_icmpeq L145 
L92:    iconst_4 
L93:    anewarray java/lang/String 
L96:    dup 
L97:    iconst_0 
L98:    ldc 'command.com' 
L100:   aastore 
L101:   dup 
L102:   iconst_1 
L103:   ldc '/c' 
L105:   aastore 
L106:   dup 
L107:   iconst_2 
L108:   ldc 'start' 
L110:   aastore 
L111:   dup 
L112:   iconst_3 
L113:   new java/lang/StringBuilder 
L116:   dup 
L117:   invokespecial Method java/lang/StringBuilder <init> ()V 
L120:   ldc '"' 
L122:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L125:   aload_1 
L126:   invokevirtual Method java/net/URL toString ()Ljava/lang/String; 
L129:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L132:   ldc '"' 
L134:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L137:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L140:   aastore 
L141:   astore_3 
L142:   goto L245 
L145:   iconst_5 
L146:   anewarray java/lang/String 
L149:   dup 
L150:   iconst_0 
L151:   ldc 'cmd.exe' 
L153:   aastore 
L154:   dup 
L155:   iconst_1 
L156:   ldc '/c' 
L158:   aastore 
L159:   dup 
L160:   iconst_2 
L161:   ldc 'start' 
L163:   aastore 
L164:   dup 
L165:   iconst_3 
L166:   ldc '""' 
L168:   aastore 
L169:   dup 
L170:   iconst_4 
L171:   new java/lang/StringBuilder 
L174:   dup 
L175:   invokespecial Method java/lang/StringBuilder <init> ()V 
L178:   ldc '"' 
L180:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L183:   aload_1 
L184:   invokevirtual Method java/net/URL toString ()Ljava/lang/String; 
L187:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L190:   ldc '"' 
L192:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L195:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L198:   aastore 
L199:   astore_3 
L200:   goto L245 
L203:   invokestatic Method com/samskivert/util/ak gm ()Z 
L206:   ifeq L229 
L209:   iconst_2 
L210:   anewarray java/lang/String 
L213:   dup 
L214:   iconst_0 
L215:   ldc 'open' 
L217:   aastore 
L218:   dup 
L219:   iconst_1 
L220:   aload_1 
L221:   invokevirtual Method java/net/URL toString ()Ljava/lang/String; 
L224:   aastore 
L225:   astore_3 
L226:   goto L245 
L229:   iconst_2 
L230:   anewarray java/lang/String 
L233:   dup 
L234:   iconst_0 
L235:   aload_3 
L236:   aastore 
L237:   dup 
L238:   iconst_1 
L239:   aload_1 
L240:   invokevirtual Method java/net/URL toString ()Ljava/lang/String; 
L243:   aastore 
L244:   astore_3 
L245:   aload_3 
L246:   ldc ' ' 
L248:   invokestatic Method com/samskivert/util/aq b ([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String; 
L251:   dup 
L252:   astore 4 
L254:   ldc 'password=[^&]*' 
L256:   ldc 'password=XXX' 
L258:   invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L261:   astore 4 
L263:   getstatic Field com/threerings/d log Lcom/samskivert/util/U; 
L266:   new java/lang/StringBuilder 
L269:   dup 
L270:   invokespecial Method java/lang/StringBuilder <init> ()V 
L273:   ldc 'Browsing URL [cmd=' 
L275:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L278:   aload 4 
L280:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L283:   ldc '].' 
L285:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L288:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L291:   iconst_0 
L292:   anewarray java/lang/Object 
L295:   invokevirtual Method com/samskivert/util/U e (Ljava/lang/Object;[Ljava/lang/Object;)V 
        .catch java/lang/Exception from L298 to L321 using L322 
L298:   invokestatic Method java/lang/Runtime getRuntime ()Ljava/lang/Runtime; 
L301:   aload_3 
L302:   invokevirtual Method java/lang/Runtime exec ([Ljava/lang/String;)Ljava/lang/Process; 
L305:   astore_3 
L306:   new com/threerings/util/c 
L309:   dup 
L310:   aload_3 
L311:   aload_1 
L312:   aload_2 
L313:   invokespecial Method com/threerings/util/c <init> (Ljava/lang/Process;Ljava/net/URL;Lcom/samskivert/util/ai;)V 
L316:   dup 
L317:   astore_3 
L318:   invokevirtual Method com/threerings/util/c start ()V 
L321:   return 
L322:   astore_3 
L323:   getstatic Field com/threerings/d log Lcom/samskivert/util/U; 
L326:   new java/lang/StringBuilder 
L329:   dup 
L330:   invokespecial Method java/lang/StringBuilder <init> ()V 
L333:   ldc 'Failed to launch browser [url=' 
L335:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L338:   aload_1 
L339:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L342:   ldc ', error=' 
L344:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L347:   aload_3 
L348:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L351:   ldc '].' 
L353:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L356:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L359:   iconst_0 
L360:   anewarray java/lang/Object 
L363:   invokevirtual Method com/samskivert/util/U f (Ljava/lang/Object;[Ljava/lang/Object;)V 
L366:   aload_2 
L367:   aload_3 
L368:   invokeinterface InterfaceMethod com/samskivert/util/ai b (Ljava/lang/Exception;)V 2 
L373:   return 
L374:   
        .linenumbertable 
            L0 910 
            L4 911 
            L5 913 
            L11 915 
            L23 916 
            L30 917 
            L31 922 
            L37 923 
            L42 926 
            L373 934 
        .end linenumbertable 
    .end code 
.end method 

.method public final wW : ()Lcom/threerings/projectx/client/s; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akS Lcom/threerings/projectx/client/s; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 941 
        .end linenumbertable 
    .end code 
.end method 

.method public final wX : ()Z 
    .code stack 4 locals 1 
L0:     aload_0 
L1:     getstatic Field com/samskivert/util/an Ct Ljava/lang/Runnable; 
L4:     iconst_0 
L5:     iconst_0 
L6:     invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Ljava/lang/Runnable;ZZ)Z 
L9:     ireturn 
L10:    
        .linenumbertable 
            L0 949 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Ljava/lang/Runnable;ZZ)Z 
    .code stack 8 locals 5 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/ProjectXApp uk ()Lcom/threerings/projectx/data/PlayerObject; 
L4:     astore 4 
L6:     aload_0 
L7:     getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L10:    invokevirtual Method com/threerings/presents/client/Client isLoggedOn ()Z 
L13:    ifeq L79 
L16:    aload_0 
L17:    getfield Field com/threerings/projectx/client/ProjectXApp akN Z 
L20:    ifne L79 
L23:    aload_0 
L24:    getfield Field com/threerings/projectx/client/ProjectXApp akO Z 
L27:    ifne L79 
L30:    aload_0 
L31:    getfield Field com/threerings/projectx/client/ProjectXApp akP Z 
L34:    ifne L79 
L37:    aload 4 
L39:    invokevirtual Method com/threerings/projectx/data/PlayerObject isAnonymous ()Z 
L42:    ifeq L79 
L45:    aload 4 
L47:    getfield Field com/threerings/projectx/data/PlayerObject knight Lcom/threerings/util/Name; 
L50:    ifnull L79 
L53:    aload_0 
L54:    iconst_1 
L55:    putfield Field com/threerings/projectx/client/ProjectXApp akN Z 
L58:    aload_0 
L59:    getfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eh; 
L62:    new com/threerings/projectx/client/dx 
L65:    dup 
L66:    aload_0 
L67:    aload_0 
L68:    aload_1 
L69:    iload_2 
L70:    iload_3 
L71:    invokespecial Method com/threerings/projectx/client/dx <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/projectx/util/A;Ljava/lang/Runnable;ZZ)V 
L74:    invokevirtual Method com/threerings/projectx/client/eh addWindow (Lcom/threerings/opengl/gui/aE;)V 
L77:    iconst_1 
L78:    ireturn 

        .stack append Object com/threerings/projectx/data/PlayerObject 
L79:    aload_1 
L80:    invokeinterface InterfaceMethod java/lang/Runnable run ()V 1 
L85:    iconst_0 
L86:    ireturn 
L87:    
        .linenumbertable 
            L0 962 
            L6 963 
            L53 965 
            L58 966 
            L77 972 
            L79 975 
            L85 976 
        .end linenumbertable 
    .end code 
.end method 

.method public final wY : ()J 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akQ J 
L4:     lreturn 
L5:     
        .linenumbertable 
            L0 985 
        .end linenumbertable 
    .end code 
.end method 

.method public final wZ : ()J 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akR J 
L4:     lreturn 
L5:     
        .linenumbertable 
            L0 993 
        .end linenumbertable 
    .end code 
.end method 

.method public final rp : ()Lcom/samskivert/util/m; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akf Lcom/samskivert/util/m; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 999 
        .end linenumbertable 
    .end code 
.end method 

.method public final rq : ()Lcom/threerings/presents/client/Client; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1005 
        .end linenumbertable 
    .end code 
.end method 

.method public final pu : ()Lcom/threerings/presents/dobj/e; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L4:     invokevirtual Method com/threerings/presents/client/Client pu ()Lcom/threerings/presents/dobj/e; 
L7:     areturn 
L8:     
        .linenumbertable 
            L0 1011 
        .end linenumbertable 
    .end code 
.end method 

.method public final rr : ()Lcom/threerings/crowd/client/d; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp aki Lcom/threerings/projectx/client/ei; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1017 
        .end linenumbertable 
    .end code 
.end method 

.method public final rs : ()Lcom/threerings/crowd/client/o; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akj Lcom/threerings/crowd/client/o; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1023 
        .end linenumbertable 
    .end code 
.end method 

.method public final rt : ()Lcom/threerings/crowd/chat/client/a; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akk Lcom/threerings/projectx/client/chat/ProjectXChatDirector; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1029 
        .end linenumbertable 
    .end code 
.end method 

.method public final a : (Lcom/threerings/crowd/client/A;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     ldc +0.5f 
L3:     invokevirtual Method com/threerings/projectx/client/ProjectXApp I (F)V 
L6:     aload_0 
L7:     aload_1 
L8:     checkcast com/threerings/opengl/q 
L11:    invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Lcom/threerings/opengl/q;)V 
L14:    return 
L15:    
        .linenumbertable 
            L0 1036 
            L6 1037 
            L14 1038 
        .end linenumbertable 
    .end code 
.end method 

.method public final b : (Lcom/threerings/crowd/client/A;)V 
    .code stack 5 locals 2 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/opengl/q; 
L4:     aload_1 
L5:     if_acmpeq L9 
L8:     return 

        .stack same 
L9:     aload_1 
L10:    instanceof com/threerings/projectx/client/et 
L13:    ifne L22 
L16:    aload_0 
L17:    aconst_null 
L18:    invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Lcom/threerings/opengl/q;)V 
L21:    return 

        .stack same 
L22:    aload_0 
L23:    getfield Field com/threerings/projectx/client/ProjectXApp akn Lcom/threerings/projectx/client/ex; 
L26:    iconst_1 
L27:    invokevirtual Method com/threerings/projectx/client/ex aU (Z)V 
L30:    aload_1 
L31:    checkcast com/threerings/projectx/client/et 
L34:    new com/threerings/projectx/client/dy 
L37:    dup 
L38:    aload_0 
L39:    aload_1 
L40:    invokespecial Method com/threerings/projectx/client/dy <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/crowd/client/A;)V 
L43:    invokevirtual Method com/threerings/projectx/client/et j (Ljava/lang/Runnable;)V 
L46:    return 
L47:    
        .linenumbertable 
            L0 1043 
            L8 1044 
            L9 1046 
            L16 1047 
            L21 1048 
            L22 1052 
            L30 1053 
            L46 1061 
        .end linenumbertable 
    .end code 
.end method 

.method public final ru : ()Lcom/threerings/whirled/a/d; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akl Lcom/threerings/whirled/a/d; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1066 
        .end linenumbertable 
    .end code 
.end method 

.method public final xa : ()Lcom/threerings/projectx/client/eh; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eh; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1072 
        .end linenumbertable 
    .end code 
.end method 

.method public final xb : ()Lcom/threerings/projectx/client/ProjectXApp; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     areturn 
L2:     
        .linenumbertable 
            L0 1078 
        .end linenumbertable 
    .end code 
.end method 

.method public final xc : ()Lcom/threerings/crowd/chat/client/k; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akm Lcom/threerings/crowd/chat/client/k; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1084 
        .end linenumbertable 
    .end code 
.end method 

.method public final xd : ()Lcom/threerings/projectx/client/ex; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akn Lcom/threerings/projectx/client/ex; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1090 
        .end linenumbertable 
    .end code 
.end method 

.method public final xe : ()Lcom/threerings/projectx/client/fq; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp ako Lcom/threerings/projectx/client/fq; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1096 
        .end linenumbertable 
    .end code 
.end method 

.method public final xf : ()Lcom/threerings/projectx/client/fq; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akp Lcom/threerings/projectx/client/fq; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1102 
        .end linenumbertable 
    .end code 
.end method 

.method public final xg : ()Lcom/threerings/projectx/social/client/n; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akq Lcom/threerings/projectx/social/client/n; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1108 
        .end linenumbertable 
    .end code 
.end method 

.method public final xh : ()Lcom/threerings/projectx/admin/client/b; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akr Lcom/threerings/projectx/admin/client/b; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1114 
        .end linenumbertable 
    .end code 
.end method 

.method public final xi : ()Lcom/threerings/projectx/guild/client/L; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp aks Lcom/threerings/projectx/guild/client/L; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1120 
        .end linenumbertable 
    .end code 
.end method 

.method public final xj : ()Lcom/threerings/projectx/guild/client/az; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akt Lcom/threerings/projectx/guild/client/az; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1126 
        .end linenumbertable 
    .end code 
.end method 

.method public final xk : ()Lcom/threerings/projectx/dungeon/client/R; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp aku Lcom/threerings/projectx/dungeon/client/R; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1132 
        .end linenumbertable 
    .end code 
.end method 

.method public final xl : ()Lcom/threerings/projectx/client/dj; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akv Lcom/threerings/projectx/client/dj; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1138 
        .end linenumbertable 
    .end code 
.end method 

.method public final xm : ()Lcom/threerings/projectx/partner/client/SteamDirector; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akw Lcom/threerings/projectx/partner/client/SteamDirector; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1144 
        .end linenumbertable 
    .end code 
.end method 

.method public final uk : ()Lcom/threerings/projectx/data/PlayerObject; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L4:     invokevirtual Method com/threerings/presents/client/Client pv ()Lcom/threerings/presents/data/ClientObject; 
L7:     checkcast com/threerings/projectx/data/PlayerObject 
L10:    areturn 
L11:    
        .linenumbertable 
            L0 1150 
        .end linenumbertable 
    .end code 
.end method 

.method public final xn : ()Lcom/threerings/projectx/data/ServerObject; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akE Lcom/threerings/projectx/data/ServerObject; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1156 
        .end linenumbertable 
    .end code 
.end method 

.method public final xo : ()J 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L4:     invokestatic Method com/samskivert/util/ak currentTimeMillis ()J 
L7:     invokevirtual Method com/threerings/presents/client/Client C (J)J 
L10:    lreturn 
L11:    
        .linenumbertable 
            L0 1162 
        .end linenumbertable 
    .end code 
.end method 

.method public final bu : (Ljava/lang/String;)Ljava/lang/String; 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     ldc 'global' 
L3:     aload_1 
L4:     invokevirtual Method com/threerings/projectx/client/ProjectXApp xlate (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L7:     areturn 
L8:     
        .linenumbertable 
            L0 1168 
        .end linenumbertable 
    .end code 
.end method 

.method public xlate : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _msgmgr Lcom/threerings/util/O; 
L4:     aload_1 
L5:     invokevirtual Method com/threerings/util/O dI (Ljava/lang/String;)Lcom/threerings/util/N; 
L8:     aload_2 
L9:     invokevirtual Method com/threerings/util/N bu (Ljava/lang/String;)Ljava/lang/String; 
L12:    areturn 
L13:    
        .linenumbertable 
            L0 1174 
        .end linenumbertable 
    .end code 
.end method 

.method public final xp : ()Lcom/google/common/eventbus/g; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akV Lcom/google/common/eventbus/g; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1180 
        .end linenumbertable 
    .end code 
.end method 

.method public final b : (Lcom/threerings/projectx/data/DialogInfo;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/ProjectXApp uk ()Lcom/threerings/projectx/data/PlayerObject; 
L4:     aload_1 
L5:     putfield Field com/threerings/projectx/data/PlayerObject sceneDialog Lcom/threerings/projectx/data/DialogInfo; 
L8:     aload_0 
L9:     getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/opengl/q; 
L12:    checkcast com/threerings/projectx/client/et 
L15:    invokevirtual Method com/threerings/projectx/client/et Of ()Lcom/threerings/tudey/a/a; 
L18:    checkcast com/threerings/projectx/client/en 
L21:    invokevirtual Method com/threerings/projectx/client/en yC ()V 
L24:    return 
L25:    
        .linenumbertable 
            L0 1186 
            L8 1187 
            L24 1188 
        .end linenumbertable 
    .end code 
.end method 

.method public final bO : (I)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/threerings/projectx/client/ProjectXApp akg I 
L5:     return 
L6:     
        .linenumbertable 
            L0 1195 
            L5 1196 
        .end linenumbertable 
    .end code 
.end method 

.method public shouldCheckTimestamps : ()Z 
    .code stack 1 locals 1 
L0:     getstatic Field com/threerings/projectx/client/ProjectXApp alb Lcom/samskivert/swing/RuntimeAdjust$b; 
L3:     invokevirtual Method com/samskivert/swing/RuntimeAdjust$b getValue ()Z 
L6:     ireturn 
L7:     
        .linenumbertable 
            L0 1201 
        .end linenumbertable 
    .end code 
.end method 

.method public shutdown : ()V 
    .code stack 4 locals 1 
L0:     aload_0 
L1:     new com/threerings/projectx/client/dz 
L4:     dup 
L5:     aload_0 
L6:     invokespecial Method com/threerings/projectx/client/dz <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L9:     iconst_1 
L10:    iconst_0 
L11:    invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Ljava/lang/Runnable;ZZ)Z 
L14:    pop 
L15:    return 
L16:    
        .linenumbertable 
            L0 1207 
            L15 1220 
        .end linenumbertable 
    .end code 
.end method 

.method protected init : ()V 
    .code stack 8 locals 4 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akw Lcom/threerings/projectx/partner/client/SteamDirector; 
L4:     invokevirtual Method com/threerings/projectx/partner/client/SteamDirector init ()Z 
L7:     ifeq L103 
L10:    invokestatic Method com/samskivert/util/ak gm ()Z 
L13:    ifne L31 
L16:    aload_0 
L17:    new com/threerings/projectx/client/dC 
L20:    dup 
L21:    aload_0 
L22:    invokespecial Method com/threerings/projectx/client/dC <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L25:    putfield Field com/threerings/projectx/client/ProjectXApp akZ Ljava/lang/Runnable; 
L28:    goto L43 

        .stack same 
L31:    getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/U; 
L34:    ldc "Not invalidating array states because I still don't think the Steam overlay is working..." 
L36:    iconst_0 
L37:    anewarray java/lang/Object 
L40:    invokevirtual Method com/samskivert/util/U f (Ljava/lang/Object;[Ljava/lang/Object;)V 

        .stack same 
L43:    aload_0 
L44:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L47:    invokevirtual Method com/threerings/presents/client/Client pq ()Lcom/threerings/presents/net/Credentials; 
L50:    checkcast com/threerings/projectx/data/ProjectXCredentials 
L53:    astore_1 
L54:    aload_0 
L55:    getfield Field com/threerings/projectx/client/ProjectXApp akw Lcom/threerings/projectx/partner/client/SteamDirector; 
L58:    invokevirtual Method com/threerings/projectx/partner/client/SteamDirector JN ()Z 
L61:    ifeq L84 
L64:    aload_0 
L65:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L68:    new com/threerings/projectx/data/ProjectXCredentials 
L71:    dup 
L72:    invokestatic Method com/threerings/froth/SteamUser getSteamID ()J 
L75:    invokespecial Method com/threerings/projectx/data/ProjectXCredentials <init> (J)V 
L78:    invokevirtual Method com/threerings/presents/client/Client a (Lcom/threerings/presents/net/Credentials;)V 
L81:    goto L103 

        .stack append Object com/threerings/projectx/data/ProjectXCredentials 
L84:    aload_1 
L85:    ifnull L103 
L88:    aload_1 
L89:    invokevirtual Method com/threerings/projectx/data/ProjectXCredentials isAnonymous ()Z 
L92:    ifeq L103 
L95:    aload_0 
L96:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L99:    aconst_null 
L100:   invokevirtual Method com/threerings/presents/client/Client a (Lcom/threerings/presents/net/Credentials;)V 

        .stack chop 1 
L103:   invokestatic Method com/threerings/projectx/client/a/g install ()V 
L106:   aload_0 
L107:   invokespecial Method com/threerings/opengl/n init ()V 
L110:   aload_0 
L111:   new com/threerings/projectx/client/aw 
L114:   dup 
L115:   aload_0 
L116:   invokespecial Method com/threerings/projectx/client/aw <init> (Lcom/threerings/projectx/util/A;)V 
L119:   putfield Field com/threerings/projectx/client/ProjectXApp aky Lcom/threerings/projectx/client/aw; 
L122:   invokestatic Method org/lwjgl/opengl/Display isCreated ()Z 
L125:   ifeq L150 
L128:   aload_0 
L129:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs xB ()Lcom/threerings/projectx/client/ProjectXPrefs$RenderQuality; 
L132:   invokevirtual Method com/threerings/projectx/client/ProjectXPrefs$RenderQuality getScheme ()Ljava/lang/String; 
L135:   invokevirtual Method com/threerings/projectx/client/ProjectXApp setRenderScheme (Ljava/lang/String;)V 
L138:   aload_0 
L139:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs xC ()I 
L142:   istore_2 
L143:   dup 
L144:   astore_1 
L145:   iload_2 
L146:   putfield Field com/threerings/projectx/client/ProjectXApp akg I 
L149:   return 

        .stack same 
L150:   new javax/swing/JFrame 
L153:   dup 
L154:   invokestatic Method com/threerings/projectx/util/a MO ()Ljava/lang/String; 
L157:   invokespecial Method javax/swing/JFrame <init> (Ljava/lang/String;)V 
L160:   dup 
L161:   astore_1 
L162:   iconst_3 
L163:   invokevirtual Method javax/swing/JFrame setDefaultCloseOperation (I)V 
L166:   aload_0 
L167:   getfield Field com/threerings/projectx/client/ProjectXApp _msgmgr Lcom/threerings/util/O; 
L170:   ldc 'projectx' 
L172:   invokevirtual Method com/threerings/util/O dI (Ljava/lang/String;)Lcom/threerings/util/N; 
L175:   astore_2 
L176:   new javax/swing/JEditorPane 
L179:   dup 
L180:   ldc 'text/html' 
L182:   aload_2 
L183:   ldc 'm.display_failure' 
L185:   invokevirtual Method com/threerings/util/N get (Ljava/lang/String;)Ljava/lang/String; 
L188:   invokespecial Method javax/swing/JEditorPane <init> (Ljava/lang/String;Ljava/lang/String;)V 
L191:   dup 
L192:   astore_3 
L193:   aconst_null 
L194:   invokevirtual Method javax/swing/JEditorPane setBackground (Ljava/awt/Color;)V 
L197:   aload_3 
L198:   iconst_0 
L199:   invokevirtual Method javax/swing/JEditorPane setEditable (Z)V 
L202:   aload_3 
L203:   new java/awt/Insets 
L206:   dup 
L207:   bipush 10 
L209:   bipush 10 
L211:   bipush 10 
L213:   bipush 10 
L215:   invokespecial Method java/awt/Insets <init> (IIII)V 
L218:   invokevirtual Method javax/swing/JEditorPane setMargin (Ljava/awt/Insets;)V 
L221:   aload_3 
L222:   new com/threerings/projectx/client/dD 
L225:   dup 
L226:   aload_0 
L227:   invokespecial Method com/threerings/projectx/client/dD <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L230:   invokevirtual Method javax/swing/JEditorPane addHyperlinkListener (Ljavax/swing/event/HyperlinkListener;)V 
L233:   aload_1 
L234:   aload_3 
L235:   ldc 'Center' 
L237:   invokevirtual Method javax/swing/JFrame add (Ljava/awt/Component;Ljava/lang/Object;)V 
L240:   new javax/swing/JPanel 
L243:   dup 
L244:   invokespecial Method javax/swing/JPanel <init> ()V 
L247:   astore_3 
L248:   aload_1 
L249:   aload_3 
L250:   ldc 'South' 
L252:   invokevirtual Method javax/swing/JFrame add (Ljava/awt/Component;Ljava/lang/Object;)V 
L255:   aload_3 
L256:   new javax/swing/JButton 
L259:   dup 
L260:   new com/threerings/projectx/client/ProjectXApp$15 
L263:   dup 
L264:   aload_0 
L265:   aload_2 
L266:   ldc 'm.ok' 
L268:   invokevirtual Method com/threerings/util/N get (Ljava/lang/String;)Ljava/lang/String; 
L271:   invokespecial Method com/threerings/projectx/client/ProjectXApp$15 <init> (Lcom/threerings/projectx/client/ProjectXApp;Ljava/lang/String;)V 
L274:   invokespecial Method javax/swing/JButton <init> (Ljavax/swing/Action;)V 
L277:   invokevirtual Method javax/swing/JPanel add (Ljava/awt/Component;)Ljava/awt/Component; 
L280:   pop 
L281:   aload_1 
L282:   sipush 400 
L285:   sipush 330 
L288:   invokevirtual Method javax/swing/JFrame setSize (II)V 
L291:   aload_1 
L292:   invokestatic Method com/samskivert/swing/a/b a (Ljava/awt/Window;)V 
L295:   aload_1 
L296:   iconst_1 
L297:   invokevirtual Method javax/swing/JFrame setVisible (Z)V 
L300:   return 
L301:   
        .linenumbertable 
            L0 1226 
            L10 1227 
            L16 1228 
            L31 1236 
            L43 1240 
            L54 1241 
            L64 1242 
            L84 1243 
            L95 1244 
            L103 1248 
            L106 1250 
            L110 1252 
            L122 1254 
            L128 1257 
            L138 1258 
            L149 1259 
            L150 1263 
            L161 1264 
            L166 1265 
            L176 1266 
            L192 1267 
            L197 1268 
            L202 1269 
            L221 1270 
            L233 1277 
            L240 1278 
            L248 1279 
            L255 1280 
            L281 1285 
            L291 1286 
            L295 1287 
            L300 1288 
        .end linenumbertable 
    .end code 
.end method 

.method protected initSharedManagers : ()V 
    .code stack 1 locals 1 
L0:     invokestatic Method com/threerings/projectx/util/a MP ()Z 
L3:     invokestatic Method com/threerings/config/ManagedConfig setStoreComments (Z)V 
L6:     aload_0 
L7:     invokespecial Method com/threerings/opengl/n initSharedManagers ()V 
L10:    return 
L11:    
        .linenumbertable 
            L0 1293 
            L6 1294 
            L10 1295 
        .end linenumbertable 
    .end code 
.end method 

.method protected getAntialiasingLevel : ()I 
    .code stack 1 locals 1 
L0:     invokestatic Method com/threerings/projectx/client/ProjectXPrefs getAntialiasingLevel ()I 
L3:     ireturn 
L4:     
        .linenumbertable 
            L0 1300 
        .end linenumbertable 
    .end code 
.end method 

.method protected didInit : ()V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     invokespecial Method com/threerings/opengl/n didInit ()V 
L4:     aload_0 
L5:     invokestatic Method com/threerings/projectx/client/ProjectXPrefs m (Lcom/threerings/projectx/util/A;)V 
L8:     invokestatic Method com/threerings/projectx/client/ProjectXPrefs$d yt ()Lcom/threerings/projectx/client/ProjectXPrefs$d; 
L11:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs a (Lcom/threerings/projectx/client/ProjectXPrefs$d;)V 
L14:    invokestatic Method org/lwjgl/opengl/GLContext getCapabilities ()Lorg/lwjgl/opengl/ContextCapabilities; 
L17:    getfield Field org/lwjgl/opengl/ContextCapabilities GL_ARB_multisample Z 
L20:    ifeq L35 
L23:    iconst_1 
L24:    ldc 32937 
L26:    invokestatic Method org/lwjgl/opengl/GL11 glGetInteger (I)I 
L29:    invokestatic Method java/lang/Math max (II)I 
L32:    goto L36 

        .stack same 
L35:    iconst_1 

        .stack stack_1 Integer 
L36:    istore_1 
L37:    bipush 31 
L39:    iload_1 
L40:    invokestatic Method java/lang/Integer numberOfLeadingZeros (I)I 
L43:    isub 
L44:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs bS (I)V 
L47:    aload_0 
L48:    getfield Field com/threerings/projectx/client/ProjectXApp akk Lcom/threerings/projectx/client/chat/ProjectXChatDirector; 
L51:    invokevirtual Method com/threerings/projectx/client/chat/ProjectXChatDirector init ()V 
L54:    aload_0 
L55:    getfield Field com/threerings/projectx/client/ProjectXApp akw Lcom/threerings/projectx/partner/client/SteamDirector; 
L58:    invokevirtual Method com/threerings/projectx/partner/client/SteamDirector tX ()V 
L61:    aload_0 
L62:    iconst_1 
L63:    invokespecial Method com/threerings/projectx/client/ProjectXApp aw (Z)V 
L66:    aload_0 
L67:    getfield Field com/threerings/projectx/client/ProjectXApp akU Z 
L70:    ifeq L90 
L73:    aload_0 
L74:    invokevirtual Method com/threerings/projectx/client/ProjectXApp getRunQueue ()Lcom/samskivert/util/al; 
L77:    new com/threerings/projectx/client/dE 
L80:    dup 
L81:    aload_0 
L82:    invokespecial Method com/threerings/projectx/client/dE <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L85:    invokeinterface InterfaceMethod com/samskivert/util/al b (Ljava/lang/Runnable;)V 2 

        .stack append Integer 
L90:    return 
L91:    
        .linenumbertable 
            L0 1317 
            L4 1319 
            L8 1323 
            L14 1324 
            L37 1326 
            L47 1329 
            L54 1330 
            L61 1333 
            L66 1335 
            L73 1337 
            L90 1344 
        .end linenumbertable 
    .end code 
.end method 

.method protected willShutdown : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     invokespecial Method com/threerings/opengl/n willShutdown ()V 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L8:     invokevirtual Method com/threerings/presents/client/Client isLoggedOn ()Z 
L11:    ifeq L23 
L14:    aload_0 
L15:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L18:    iconst_0 
L19:    invokevirtual Method com/threerings/presents/client/Client D (Z)Z 
L22:    pop 

        .stack same 
L23:    aload_0 
L24:    getfield Field com/threerings/projectx/client/ProjectXApp akw Lcom/threerings/projectx/partner/client/SteamDirector; 
L27:    invokevirtual Method com/threerings/projectx/partner/client/SteamDirector shutdown ()V 
L30:    aload_0 
L31:    getfield Field com/threerings/projectx/client/ProjectXApp akS Lcom/threerings/projectx/client/s; 
L34:    invokevirtual Method com/threerings/projectx/client/s shutdown ()V 
L37:    aload_0 
L38:    getfield Field com/threerings/projectx/client/ProjectXApp akA Lcom/threerings/projectx/client/hud/n; 
L41:    ifnull L51 
L44:    aload_0 
L45:    getfield Field com/threerings/projectx/client/ProjectXApp akA Lcom/threerings/projectx/client/hud/n; 
L48:    invokevirtual Method com/threerings/projectx/client/hud/n shutdown ()V 

        .stack same 
L51:    return 
L52:    
        .linenumbertable 
            L0 1349 
            L4 1352 
            L14 1353 
            L23 1357 
            L30 1359 
            L37 1361 
            L44 1362 
            L51 1364 
        .end linenumbertable 
    .end code 
.end method 

.method protected updateView : (F)V 
    .code stack 5 locals 4 
L0:     invokestatic Method java/lang/System nanoTime ()J 
L3:     lstore_2 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/ProjectXApp akw Lcom/threerings/projectx/partner/client/SteamDirector; 
L8:     invokevirtual Method com/threerings/projectx/partner/client/SteamDirector update ()V 
L11:    aload_0 
L12:    getfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eh; 
L15:    invokevirtual Method com/threerings/projectx/client/eh poll ()V 
L18:    aload_0 
L19:    getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/opengl/q; 
L22:    ifnull L35 
L25:    aload_0 
L26:    getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/opengl/q; 
L29:    fload_1 
L30:    invokeinterface InterfaceMethod com/threerings/opengl/q tick (F)V 2 

        .stack append Long 
L35:    aload_0 
L36:    getfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eh; 
L39:    fload_1 
L40:    invokevirtual Method com/threerings/projectx/client/eh tick (F)V 
L43:    aload_0 
L44:    fload_1 
L45:    invokespecial Method com/threerings/opengl/n updateView (F)V 
L48:    aload_0 
L49:    invokestatic Method java/lang/System nanoTime ()J 
L52:    lload_2 
L53:    lsub 
L54:    putfield Field com/threerings/projectx/client/ProjectXApp akQ J 
L57:    return 
L58:    
        .linenumbertable 
            L0 1369 
            L4 1371 
            L11 1373 
            L18 1374 
            L25 1375 
            L35 1377 
            L43 1380 
            L48 1381 
            L57 1382 
        .end linenumbertable 
    .end code 
.end method 

.method protected renderView : ()V 
    .code stack 5 locals 3 
L0:     invokestatic Method java/lang/System nanoTime ()J 
L3:     lstore_1 
L4:     aload_0 
L5:     invokespecial Method com/threerings/opengl/n renderView ()V 
L8:     aload_0 
L9:     invokestatic Method java/lang/System nanoTime ()J 
L12:    lload_1 
L13:    lsub 
L14:    putfield Field com/threerings/projectx/client/ProjectXApp akR J 
L17:    return 
L18:    
        .linenumbertable 
            L0 1387 
            L4 1388 
            L8 1389 
            L17 1390 
        .end linenumbertable 
    .end code 
.end method 

.method protected compositeView : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokespecial Method com/threerings/opengl/n compositeView ()V 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/opengl/q; 
L8:     ifnull L20 
L11:    aload_0 
L12:    getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/opengl/q; 
L15:    invokeinterface InterfaceMethod com/threerings/opengl/q composite ()V 1 

        .stack same 
L20:    getstatic Field com/threerings/projectx/client/ProjectXApp ala Lcom/samskivert/swing/RuntimeAdjust$b; 
L23:    invokevirtual Method com/samskivert/swing/RuntimeAdjust$b getValue ()Z 
L26:    ifeq L39 
L29:    aload_0 
L30:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L33:    invokevirtual Method com/threerings/presents/client/Client isLoggedOn ()Z 
L36:    ifne L46 

        .stack same 
L39:    aload_0 
L40:    getfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eh; 
L43:    invokevirtual Method com/threerings/projectx/client/eh composite ()V 

        .stack same 
L46:    return 
L47:    
        .linenumbertable 
            L0 1395 
            L4 1396 
            L11 1397 
            L20 1399 
            L39 1400 
            L46 1402 
        .end linenumbertable 
    .end code 
.end method 

.method protected attemptCreateDisplay : ()Z 
    .code stack 1 locals 1 
L0:     iconst_1 
L1:     invokestatic Method org/lwjgl/opengl/Display setResizable (Z)V 
L4:     aload_0 
L5:     invokespecial Method com/threerings/opengl/n attemptCreateDisplay ()Z 
L8:     ireturn 
L9:     
        .linenumbertable 
            L0 1407 
            L4 1408 
        .end linenumbertable 
    .end code 
.end method 

.method public final xq : ()V 
    .code stack 5 locals 1 
L0:     aload_0 
L1:     invokestatic Method java/lang/System currentTimeMillis ()J 
L4:     ldc2_w 2000L 
L7:     ladd 
L8:     putfield Field com/threerings/projectx/client/ProjectXApp akL J 
L11:    return 
L12:    
        .linenumbertable 
            L0 1418 
            L11 1419 
        .end linenumbertable 
    .end code 
.end method 

.method protected updateFrame : ()V 
    .code stack 4 locals 2 
L0:     invokestatic Method org/lwjgl/opengl/Display wasResized ()Z 
L3:     ifeq L120 
L6:     invokestatic Method java/lang/System currentTimeMillis ()J 
L9:     aload_0 
L10:    getfield Field com/threerings/projectx/client/ProjectXApp akL J 
L13:    lcmp 
L14:    ifle L120 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/ProjectXApp akY Lcom/samskivert/util/E; 
L21:    ldc2_w 800L 
L24:    invokevirtual Method com/samskivert/util/E schedule (J)V 
L27:    aload_0 
L28:    invokevirtual Method com/threerings/projectx/client/ProjectXApp calcRendererSize ()Ljava/awt/Dimension; 
L31:    astore_1 
L32:    aload_0 
L33:    getfield Field com/threerings/projectx/client/ProjectXApp _renderer Lcom/threerings/opengl/renderer/Renderer; 
L36:    aload_1 
L37:    getfield Field java/awt/Dimension width I 
L40:    aload_1 
L41:    getfield Field java/awt/Dimension height I 
L44:    invokevirtual Method com/threerings/opengl/renderer/Renderer setSize (II)V 
L47:    aload_1 
L48:    getfield Field java/awt/Dimension width I 
L51:    invokestatic Method org/lwjgl/opengl/Display getWidth ()I 
L54:    if_icmpgt L67 
L57:    aload_1 
L58:    getfield Field java/awt/Dimension height I 
L61:    invokestatic Method org/lwjgl/opengl/Display getHeight ()I 
L64:    if_icmple L71 

        .stack append Object java/awt/Dimension 
L67:    iconst_1 
L68:    goto L72 

        .stack same 
L71:    iconst_0 

        .stack stack_1 Integer 
L72:    dup 
L73:    istore_1 
L74:    aload_0 
L75:    getfield Field com/threerings/projectx/client/ProjectXApp akA Lcom/threerings/projectx/client/hud/n; 
L78:    ifnonnull L85 
L81:    iconst_1 
L82:    goto L86 

        .stack full 
            locals Object com/threerings/projectx/client/ProjectXApp Object java/awt/Dimension Integer 
            stack Integer 
        .end stack 
L85:    iconst_0 

        .stack full 
            locals Object com/threerings/projectx/client/ProjectXApp Object java/awt/Dimension Integer 
            stack Integer Integer 
        .end stack 
L86:    if_icmpne L120 
L89:    iload_1 
L90:    ifeq L108 
L93:    aload_0 
L94:    new com/threerings/projectx/client/hud/n 
L97:    dup 
L98:    aload_0 
L99:    invokespecial Method com/threerings/projectx/client/hud/n <init> (Lcom/threerings/projectx/util/A;)V 
L102:   putfield Field com/threerings/projectx/client/ProjectXApp akA Lcom/threerings/projectx/client/hud/n; 
L105:   goto L120 

        .stack same 
L108:   aload_0 
L109:   getfield Field com/threerings/projectx/client/ProjectXApp akA Lcom/threerings/projectx/client/hud/n; 
L112:   invokevirtual Method com/threerings/projectx/client/hud/n shutdown ()V 
L115:   aload_0 
L116:   aconst_null 
L117:   putfield Field com/threerings/projectx/client/ProjectXApp akA Lcom/threerings/projectx/client/hud/n; 

        .stack chop 2 
L120:   aload_0 
L121:   invokespecial Method com/threerings/opengl/n updateFrame ()V 
L124:   aload_0 
L125:   getfield Field com/threerings/projectx/client/ProjectXApp akg I 
L128:   invokestatic Method org/lwjgl/opengl/Display sync (I)V 
L131:   aload_0 
L132:   getfield Field com/threerings/projectx/client/ProjectXApp akZ Ljava/lang/Runnable; 
L135:   invokeinterface InterfaceMethod java/lang/Runnable run ()V 1 
L140:   return 
L141:   
        .linenumbertable 
            L0 1424 
            L17 1426 
            L27 1428 
            L32 1429 
            L47 1432 
            L73 1434 
            L89 1435 
            L93 1436 
            L108 1439 
            L115 1440 
            L120 1445 
            L124 1446 
            L131 1448 
            L140 1449 
        .end linenumbertable 
    .end code 
.end method 

.method protected calcRendererSize : ()Ljava/awt/Dimension; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokespecial Method com/threerings/opengl/n calcRendererSize ()Ljava/awt/Dimension; 
L4:     invokestatic Method com/threerings/projectx/client/ProjectXPrefs$d a (Ljava/awt/Dimension;)Ljava/awt/Dimension; 
L7:     areturn 
L8:     
        .linenumbertable 
            L0 1454 
        .end linenumbertable 
    .end code 
.end method 

.method protected final xr : ()V 
    .code stack 6 locals 7 
L0:     aload_0 
L1:     iconst_1 
L2:     putfield Field com/threerings/projectx/client/ProjectXApp akM Z 
L5:     aload_0 
L6:     getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L9:     invokevirtual Method com/threerings/presents/client/Client py ()Lcom/threerings/presents/net/BootstrapData; 
L12:    checkcast com/threerings/projectx/data/ProjectXBootstrapData 
L15:    getfield Field com/threerings/projectx/data/ProjectXBootstrapData serverOid I 
L18:    istore_1 
L19:    aload_0 
L20:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L23:    invokevirtual Method com/threerings/presents/client/Client pu ()Lcom/threerings/presents/dobj/e; 
L26:    iload_1 
L27:    new com/threerings/projectx/client/dG 
L30:    dup 
L31:    aload_0 
L32:    invokespecial Method com/threerings/projectx/client/dG <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L35:    invokeinterface InterfaceMethod com/threerings/presents/dobj/e a (ILcom/threerings/presents/dobj/s;)V 3 
L40:    aload_0 
L41:    invokevirtual Method com/threerings/projectx/client/ProjectXApp uk ()Lcom/threerings/projectx/data/PlayerObject; 
L44:    dup 
L45:    astore_1 
L46:    aload_0 
L47:    getfield Field com/threerings/projectx/client/ProjectXApp akX Lcom/threerings/presents/dobj/j; 
L50:    invokevirtual Method com/threerings/projectx/data/PlayerObject d (Lcom/google/inject/a/a;)V 
L53:    aload_1 
L54:    getfield Field com/threerings/projectx/data/PlayerObject availableKnights [Lcom/threerings/projectx/data/AvailableKnight; 
L57:    dup 
L58:    astore_2 
L59:    ifnonnull L80 
L62:    aload_0 
L63:    invokevirtual Method com/threerings/projectx/client/ProjectXApp getRunQueue ()Lcom/samskivert/util/al; 
L66:    new com/threerings/projectx/client/dH 
L69:    dup 
L70:    aload_0 
L71:    aload_1 
L72:    invokespecial Method com/threerings/projectx/client/dH <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/projectx/data/PlayerObject;)V 
L75:    invokeinterface InterfaceMethod com/samskivert/util/al b (Ljava/lang/Runnable;)V 2 

        .stack append Integer Object com/threerings/projectx/data/PlayerObject Object [Lcom/threerings/projectx/data/AvailableKnight; 
L80:    aload_0 
L81:    getfield Field com/threerings/projectx/client/ProjectXApp akJ Z 
L84:    ifeq L88 
L87:    return 

        .stack same 
L88:    aload_0 
L89:    new com/threerings/crowd/chat/client/k 
L92:    dup 
L93:    aload_0 
L94:    aload_1 
L95:    getfield Field com/threerings/projectx/data/PlayerObject username Lcom/threerings/util/Name; 
L98:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs j (Lcom/threerings/util/Name;)[Lcom/threerings/util/Name; 
L101:   invokespecial Method com/threerings/crowd/chat/client/k <init> (Lcom/threerings/presents/b/b;[Lcom/threerings/util/Name;)V 
L104:   putfield Field com/threerings/projectx/client/ProjectXApp akm Lcom/threerings/crowd/chat/client/k; 
L107:   aload_0 
L108:   getfield Field com/threerings/projectx/client/ProjectXApp akm Lcom/threerings/crowd/chat/client/k; 
L111:   aload_0 
L112:   getfield Field com/threerings/projectx/client/ProjectXApp akk Lcom/threerings/projectx/client/chat/ProjectXChatDirector; 
L115:   invokevirtual Method com/threerings/crowd/chat/client/k a (Lcom/threerings/crowd/chat/client/a;)V 
L118:   aload_0 
L119:   getfield Field com/threerings/projectx/client/ProjectXApp akm Lcom/threerings/crowd/chat/client/k; 
L122:   new com/threerings/projectx/client/dJ 
L125:   dup 
L126:   aload_0 
L127:   aload_1 
L128:   invokespecial Method com/threerings/projectx/client/dJ <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/projectx/data/PlayerObject;)V 
L131:   invokevirtual Method com/threerings/crowd/chat/client/k a (Lcom/threerings/crowd/chat/client/k$a;)V 
L134:   aload_0 
L135:   dup 
L136:   astore_3 
L137:   iconst_1 
L138:   invokespecial Method com/threerings/projectx/client/ProjectXApp av (Z)V 
L141:   aload_0 
L142:   astore_3 
L143:   ldc 'appdir' 
L145:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L148:   dup 
L149:   astore 4 
L151:   ifnull L246 
L154:   ldc 'full.dat' 
L156:   invokestatic Method com/threerings/projectx/client/ProjectXApp cn (Ljava/lang/String;)Ljava/io/File; 
L159:   dup 
L160:   astore 5 
L162:   invokevirtual Method java/io/File exists ()Z 
L165:   ifne L246 
        .catch java/io/IOException from L168 to L174 using L177 
L168:   aload 5 
L170:   invokevirtual Method java/io/File createNewFile ()Z 
L173:   pop 
L174:   goto L206 
L177:   astore 6 
L179:   getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/U; 
L182:   ldc 'Failed to create file.' 
L184:   iconst_3 
L185:   anewarray java/lang/Object 
L188:   dup 
L189:   iconst_0 
L190:   ldc 'file' 
L192:   aastore 
L193:   dup 
L194:   iconst_1 
L195:   aload 5 
L197:   aastore 
L198:   dup 
L199:   iconst_2 
L200:   aload 6 
L202:   aastore 
L203:   invokevirtual Method com/samskivert/util/U f (Ljava/lang/Object;[Ljava/lang/Object;)V 
L206:   aload_3 
L207:   new com/threerings/projectx/client/ProjectXApp$b 
L210:   dup 
L211:   invokespecial Method com/threerings/projectx/client/ProjectXApp$b <init> ()V 
L214:   putfield Field com/threerings/projectx/client/ProjectXApp akF Lcom/threerings/projectx/client/ProjectXApp$b; 
L217:   ldc 'silent' 
L219:   ldc 'launch' 
L221:   invokestatic Method java/lang/System setProperty (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L224:   pop 
L225:   new com/threerings/projectx/client/dL 
L228:   dup 
L229:   aload_3 
L230:   new java/io/File 
L233:   dup 
L234:   aload 4 
L236:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L239:   aconst_null 
L240:   invokespecial Method com/threerings/projectx/client/dL <init> (Lcom/threerings/projectx/client/ProjectXApp;Ljava/io/File;Ljava/lang/String;)V 
L243:   invokevirtual Method com/threerings/projectx/client/dL start ()V 
L246:   aload_1 
L247:   getfield Field com/threerings/projectx/data/PlayerObject queuePosition I 
L250:   ifle L266 
L253:   aload_0 
L254:   new com/threerings/projectx/client/ci 
L257:   dup 
L258:   aload_0 
L259:   invokespecial Method com/threerings/projectx/client/ci <init> (Lcom/threerings/projectx/util/A;)V 
L262:   invokevirtual Method com/threerings/projectx/client/ProjectXApp c (Lcom/threerings/opengl/gui/aE;)V 
L265:   return 

        .stack same_extended 
L266:   aload_2 
L267:   ifnull L274 
L270:   aload_0 
L271:   invokevirtual Method com/threerings/projectx/client/ProjectXApp wS ()V 

        .stack same 
L274:   return 
L275:   
        .linenumbertable 
            L0 1520 
            L5 1523 
            L19 1524 
            L40 1538 
            L45 1539 
            L53 1540 
            L58 1541 
            L62 1543 
            L80 1549 
            L87 1550 
            L88 1554 
            L107 1562 
            L118 1563 
            L134 1570 
            L141 1574 
            L246 1578 
            L253 1579 
            L266 1581 
            L270 1582 
            L274 1600 
        .end linenumbertable 
    .end code 
.end method 

.method protected final xs : ()Lcom/threerings/tudey/data/TudeySceneModel; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     ldc 'world/readyroom/scene.dat' 
L3:     invokespecial Method com/threerings/projectx/client/ProjectXApp cq (Ljava/lang/String;)Lcom/threerings/tudey/data/TudeySceneModel; 
L6:     dup 
L7:     astore_1 
L8:     ldc '' 
L10:    invokestatic Method com/threerings/util/N ac (Ljava/lang/Object;)Ljava/lang/String; 
L13:    putfield Field com/threerings/tudey/data/TudeySceneModel name Ljava/lang/String; 
L16:    aload_1 
L17:    getstatic Field com/threerings/projectx/data/ReadyRoomSceneConfig avm Lcom/threerings/projectx/data/ReadyRoomSceneConfig; 
L20:    invokevirtual Method com/threerings/tudey/data/TudeySceneModel a (Lcom/threerings/tudey/data/TudeySceneConfig;)V 
L23:    aload_1 
L24:    areturn 
L25:    
        .linenumbertable 
            L0 1605 
            L7 1606 
            L16 1607 
            L23 1608 
        .end linenumbertable 
    .end code 
.end method 

.method public final xt : ()Lcom/threerings/tudey/data/TudeySceneModel; 
    .code stack 6 locals 2 
        .catch java/io/IOException from L0 to L6 using L7 
L0:     aload_0 
L1:     ldc 'world/createknight/scene.dat' 
L3:     invokespecial Method com/threerings/projectx/client/ProjectXApp cq (Ljava/lang/String;)Lcom/threerings/tudey/data/TudeySceneModel; 
L6:     areturn 

        .stack stack_1 Object java/io/IOException 
L7:     astore_1 
L8:     getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/U; 
L11:    ldc 'Could not load' 
L13:    iconst_1 
L14:    anewarray java/lang/Object 
L17:    dup 
L18:    iconst_0 
L19:    aload_1 
L20:    aastore 
L21:    invokevirtual Method com/samskivert/util/U f (Ljava/lang/Object;[Ljava/lang/Object;)V 
L24:    aconst_null 
L25:    areturn 
L26:    
        .linenumbertable 
            L0 1614 
            L7 1615 
            L8 1616 
            L24 1617 
        .end linenumbertable 
    .end code 
.end method 

.method private cq : (Ljava/lang/String;)Lcom/threerings/tudey/data/TudeySceneModel; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/ProjectXApp getResourceManager ()Lcom/threerings/b/f; 
L4:     aload_1 
L5:     invokevirtual Method com/threerings/b/f dr (Ljava/lang/String;)Ljava/io/File; 
L8:     ldc Class com/threerings/tudey/data/TudeySceneModel 
L10:    invokestatic Method com/threerings/crowd/data/PlaceObject$a a (Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object; 
L13:    checkcast com/threerings/tudey/data/TudeySceneModel 
L16:    areturn 
L17:    
        .linenumbertable 
            L0 1624 
        .end linenumbertable 
    .end code 
.end method 

.method protected final c : (Lcom/threerings/projectx/data/PlayerObject;)V 
    .code stack 5 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/ProjectXApp getRunQueue ()Lcom/samskivert/util/al; 
L4:     new com/threerings/projectx/client/dK 
L7:     dup 
L8:     aload_0 
L9:     aload_1 
L10:    invokespecial Method com/threerings/projectx/client/dK <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/projectx/data/PlayerObject;)V 
L13:    invokeinterface InterfaceMethod com/samskivert/util/al b (Ljava/lang/Runnable;)V 2 
L18:    return 
L19:    
        .linenumbertable 
            L0 1635 
            L18 1652 
        .end linenumbertable 
    .end code 
.end method 

.method protected final a : (Ljava/lang/String;IJZZ)V 
    .code stack 4 locals 7 
L0:     aload_1 
L1:     ifnull L12 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/ProjectXApp akF Lcom/threerings/projectx/client/ProjectXApp$b; 
L8:     aload_1 
L9:     putfield Field com/threerings/projectx/client/ProjectXApp$b message Ljava/lang/String; 

        .stack same 
L12:    iload_2 
L13:    iflt L32 
L16:    aload_0 
L17:    getfield Field com/threerings/projectx/client/ProjectXApp akF Lcom/threerings/projectx/client/ProjectXApp$b; 
L20:    iload_2 
L21:    putfield Field com/threerings/projectx/client/ProjectXApp$b als I 
L24:    aload_0 
L25:    getfield Field com/threerings/projectx/client/ProjectXApp akF Lcom/threerings/projectx/client/ProjectXApp$b; 
L28:    lload_3 
L29:    putfield Field com/threerings/projectx/client/ProjectXApp$b alt J 

        .stack same 
L32:    aload_0 
L33:    getfield Field com/threerings/projectx/client/ProjectXApp akF Lcom/threerings/projectx/client/ProjectXApp$b; 
L36:    dup 
L37:    getfield Field com/threerings/projectx/client/ProjectXApp$b alu Z 
L40:    iload 5 
L42:    ior 
L43:    putfield Field com/threerings/projectx/client/ProjectXApp$b alu Z 
L46:    aload_0 
L47:    getfield Field com/threerings/projectx/client/ProjectXApp akF Lcom/threerings/projectx/client/ProjectXApp$b; 
L50:    iload 6 
L52:    putfield Field com/threerings/projectx/client/ProjectXApp$b alv Z 
L55:    aload_0 
L56:    getfield Field com/threerings/projectx/client/ProjectXApp akG Lcom/samskivert/util/ObserverList; 
L59:    new com/threerings/projectx/client/dO 
L62:    dup 
L63:    aload_0 
L64:    invokespecial Method com/threerings/projectx/client/dO <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L67:    invokevirtual Method com/samskivert/util/ObserverList a (Lcom/samskivert/util/ObserverList$b;)V 
L70:    return 
L71:    
        .linenumbertable 
            L0 1719 
            L4 1720 
            L12 1722 
            L16 1723 
            L24 1724 
            L32 1726 
            L46 1727 
            L55 1730 
            L70 1736 
        .end linenumbertable 
    .end code 
.end method 

.method protected final xu : ()V 
    .code stack 4 locals 1 
L0:     aload_0 
L1:     aconst_null 
L2:     putfield Field com/threerings/projectx/client/ProjectXApp akF Lcom/threerings/projectx/client/ProjectXApp$b; 
L5:     aload_0 
L6:     getfield Field com/threerings/projectx/client/ProjectXApp akG Lcom/samskivert/util/ObserverList; 
L9:     new com/threerings/projectx/client/dP 
L12:    dup 
L13:    aload_0 
L14:    invokespecial Method com/threerings/projectx/client/dP <init> (Lcom/threerings/projectx/client/ProjectXApp;)V 
L17:    invokevirtual Method com/samskivert/util/ObserverList a (Lcom/samskivert/util/ObserverList$b;)V 
L20:    return 
L21:    
        .linenumbertable 
            L0 1743 
            L5 1746 
            L20 1752 
        .end linenumbertable 
    .end code 
.end method 

.method protected final xv : ()V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/threerings/projectx/client/ProjectXApp uk ()Lcom/threerings/projectx/data/PlayerObject; 
L4:     dup 
L5:     astore_1 
L6:     ifnull L17 
L9:     aload_1 
L10:    aload_0 
L11:    getfield Field com/threerings/projectx/client/ProjectXApp akX Lcom/threerings/presents/dobj/j; 
L14:    invokevirtual Method com/threerings/projectx/data/PlayerObject e (Lcom/google/inject/a/a;)V 

        .stack append Object com/threerings/projectx/data/PlayerObject 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/ProjectXApp akJ Z 
L21:    ifeq L25 
L24:    return 

        .stack same 
L25:    aload_0 
L26:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L29:    aconst_null 
L30:    invokevirtual Method com/threerings/presents/client/Client a (Lcom/threerings/presents/net/Credentials;)V 
L33:    aload_0 
L34:    aconst_null 
L35:    putfield Field com/threerings/projectx/client/ProjectXApp akB Ljava/lang/String; 
L38:    aload_0 
L39:    getfield Field com/threerings/projectx/client/ProjectXApp akm Lcom/threerings/crowd/chat/client/k; 
L42:    ifnull L57 
L45:    aload_0 
L46:    getfield Field com/threerings/projectx/client/ProjectXApp akm Lcom/threerings/crowd/chat/client/k; 
L49:    invokevirtual Method com/threerings/crowd/chat/client/k shutdown ()V 
L52:    aload_0 
L53:    aconst_null 
L54:    putfield Field com/threerings/projectx/client/ProjectXApp akm Lcom/threerings/crowd/chat/client/k; 

        .stack same 
L57:    aload_0 
L58:    iconst_0 
L59:    invokespecial Method com/threerings/projectx/client/ProjectXApp av (Z)V 
L62:    aload_0 
L63:    iconst_0 
L64:    invokespecial Method com/threerings/projectx/client/ProjectXApp aw (Z)V 
L67:    return 
L68:    
        .linenumbertable 
            L0 1759 
            L5 1761 
            L9 1762 
            L17 1765 
            L24 1766 
            L25 1770 
            L33 1771 
            L38 1772 
            L45 1773 
            L52 1774 
            L57 1776 
            L62 1777 
            L67 1778 
        .end linenumbertable 
    .end code 
.end method 

.method private aw : (Z)V 
    .code stack 6 locals 2 
L0:     ldc 'armor' 
L2:     invokestatic Method java/lang/Boolean getBoolean (Ljava/lang/String;)Z 
L5:     ifeq L24 
L8:     invokestatic Method com/threerings/crowd/chat/client/k if ()Z 
L11:    ifeq L24 
L14:    aload_0 
L15:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L18:    invokestatic Method com/threerings/crowd/chat/client/k ig ()Lcom/threerings/projectx/data/ProjectXCredentials; 
L21:    invokevirtual Method com/threerings/presents/client/Client a (Lcom/threerings/presents/net/Credentials;)V 

        .stack same 
L24:    ldc 'newgrounds' 
L26:    invokestatic Method java/lang/Boolean getBoolean (Ljava/lang/String;)Z 
L29:    ifeq L48 
L32:    invokestatic Method com/threerings/projectx/partner/client/a JM ()Z 
L35:    ifeq L48 
L38:    aload_0 
L39:    getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L42:    invokestatic Method com/threerings/projectx/partner/client/a ig ()Lcom/threerings/projectx/data/ProjectXCredentials; 
L45:    invokevirtual Method com/threerings/presents/client/Client a (Lcom/threerings/presents/net/Credentials;)V 

        .stack same 
L48:    aload_0 
L49:    ldc 'sound/music/title.ogg' 
L51:    ldc +0.44999998807907104f 
L53:    ldc +0.5f 
L55:    invokevirtual Method com/threerings/projectx/client/ProjectXApp c (Ljava/lang/String;FF)V 
L58:    aload_0 
L59:    new com/threerings/projectx/client/cj 
L62:    dup 
L63:    aload_0 
L64:    aload_0 
L65:    getfield Field com/threerings/projectx/client/ProjectXApp akK Ljava/lang/String; 
L68:    iload_1 
L69:    invokespecial Method com/threerings/projectx/client/cj <init> (Lcom/threerings/projectx/util/A;Ljava/lang/String;Z)V 
L72:    invokevirtual Method com/threerings/projectx/client/ProjectXApp c (Lcom/threerings/opengl/gui/aE;)V 
L75:    aload_0 
L76:    aconst_null 
L77:    putfield Field com/threerings/projectx/client/ProjectXApp akK Ljava/lang/String; 
L80:    return 
L81:    
        .linenumbertable 
            L0 1786 
            L14 1787 
            L24 1789 
            L38 1790 
            L48 1793 
            L58 1794 
            L75 1795 
            L80 1796 
        .end linenumbertable 
    .end code 
.end method 

.method protected final h : (Ljava/lang/Runnable;)V 
    .code stack 9 locals 5 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp UO Lcom/threerings/presents/client/Client; 
L4:     invokevirtual Method com/threerings/presents/client/Client isLoggedOn ()Z 
L7:     ifeq L183 
L10:    aload_0 
L11:    getfield Field com/threerings/projectx/client/ProjectXApp akN Z 
L14:    ifne L183 
L17:    aload_0 
L18:    getfield Field com/threerings/projectx/client/ProjectXApp akO Z 
L21:    ifne L183 
L24:    aload_0 
L25:    getfield Field com/threerings/projectx/client/ProjectXApp akP Z 
L28:    ifne L183 
L31:    getstatic Field com/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt OFFER_END_SURVEY Lcom/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt; 
L34:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs a (Lcom/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt;)Z 
L37:    ifeq L183 
L40:    aload_0 
L41:    getfield Field com/threerings/projectx/client/ProjectXApp akE Lcom/threerings/projectx/data/ServerObject; 
L44:    ifnull L183 
L47:    aload_0 
L48:    getfield Field com/threerings/projectx/client/ProjectXApp akE Lcom/threerings/projectx/data/ServerObject; 
L51:    getfield Field com/threerings/projectx/data/ServerObject endSurveyProbability F 
L54:    invokestatic Method com/samskivert/util/af g (F)Z 
L57:    ifeq L183 
L60:    aload_0 
L61:    iconst_1 
L62:    putfield Field com/threerings/projectx/client/ProjectXApp akO Z 
L65:    new com/threerings/projectx/admin/data/Survey 
L68:    dup 
L69:    invokespecial Method com/threerings/projectx/admin/data/Survey <init> ()V 
L72:    astore_2 
L73:    new com/threerings/projectx/admin/data/Survey$Rating 
L76:    dup 
L77:    invokespecial Method com/threerings/projectx/admin/data/Survey$Rating <init> ()V 
L80:    dup 
L81:    astore_3 
L82:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs getLanguage ()Ljava/lang/String; 
L85:    putfield Field com/threerings/projectx/admin/data/Survey$Rating language Ljava/lang/String; 
L88:    aload_0 
L89:    getfield Field com/threerings/projectx/client/ProjectXApp _msgmgr Lcom/threerings/util/O; 
L92:    ldc 'uplink' 
L94:    invokevirtual Method com/threerings/util/O dI (Ljava/lang/String;)Lcom/threerings/util/N; 
L97:    astore 4 
L99:    aload_3 
L100:   aload 4 
L102:   ldc 'm.end_survey_prompt' 
L104:   invokevirtual Method com/threerings/util/N get (Ljava/lang/String;)Ljava/lang/String; 
L107:   putfield Field com/threerings/projectx/admin/data/Survey$Rating prompt Ljava/lang/String; 
L110:   aload_3 
L111:   aload 4 
L113:   ldc 'm.end_survey_min' 
L115:   invokevirtual Method com/threerings/util/N get (Ljava/lang/String;)Ljava/lang/String; 
L118:   putfield Field com/threerings/projectx/admin/data/Survey$Rating minLabel Ljava/lang/String; 
L121:   aload_3 
L122:   aload 4 
L124:   ldc 'm.end_survey_max' 
L126:   invokevirtual Method com/threerings/util/N get (Ljava/lang/String;)Ljava/lang/String; 
L129:   putfield Field com/threerings/projectx/admin/data/Survey$Rating maxLabel Ljava/lang/String; 
L132:   aload_2 
L133:   iconst_1 
L134:   anewarray com/threerings/projectx/admin/data/Survey$Question 
L137:   dup 
L138:   iconst_0 
L139:   aload_3 
L140:   aastore 
L141:   putfield Field com/threerings/projectx/admin/data/Survey questions [Lcom/threerings/projectx/admin/data/Survey$Question; 
L144:   new com/threerings/opengl/gui/k 
L147:   dup 
L148:   aload_0 
L149:   aload_0 
L150:   ldc 'projectx' 
L152:   ldc 'm.no_ask' 
L154:   invokevirtual Method com/threerings/projectx/client/ProjectXApp xlate (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L157:   invokespecial Method com/threerings/opengl/gui/k <init> (Lcom/threerings/openal/a/a;Ljava/lang/String;)V 
L160:   astore_3 
L161:   aload_0 
L162:   getfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eh; 
L165:   new com/threerings/projectx/client/dQ 
L168:   dup 
L169:   aload_0 
L170:   aload_0 
L171:   aload_2 
L172:   iconst_0 
L173:   aload_3 
L174:   aload_1 
L175:   invokespecial Method com/threerings/projectx/client/dQ <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/admin/data/Survey;ZLcom/threerings/opengl/gui/k;Ljava/lang/Runnable;)V 
L178:   iconst_1 
L179:   invokevirtual Method com/threerings/projectx/client/eh addWindow (Lcom/threerings/opengl/gui/aE;Z)V 
L182:   return 

        .stack same_extended 
L183:   aload_1 
L184:   invokeinterface InterfaceMethod java/lang/Runnable run ()V 1 

        .stack same 
L189:   return 
L190:   
        .linenumbertable 
            L0 1803 
            L60 1806 
            L65 1807 
            L73 1808 
            L81 1809 
            L88 1810 
            L99 1811 
            L110 1812 
            L121 1813 
            L132 1814 
            L144 1815 
            L161 1816 
            L182 1829 
            L183 1830 
            L189 1832 
        .end linenumbertable 
    .end code 
.end method 

.method protected final i : (Ljava/lang/Runnable;)V 
    .code stack 10 locals 3 
L0:     getstatic Field com/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt OFFER_SHORTCUT Lcom/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt; 
L3:     invokevirtual Method com/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt isVisible ()Z 
L6:     ifeq L38 
L9:     getstatic Field com/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt OFFER_SHORTCUT Lcom/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt; 
L12:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs a (Lcom/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt;)Z 
L15:    ifeq L38 
L18:    aload_0 
L19:    getfield Field com/threerings/projectx/client/ProjectXApp akM Z 
L22:    ifeq L38 
L25:    aload_0 
L26:    getfield Field com/threerings/projectx/client/ProjectXApp akP Z 
L29:    ifne L38 
L32:    invokestatic Method com/threerings/projectx/client/a/i AM ()Z 
L35:    ifne L45 

        .stack same 
L38:    aload_1 
L39:    invokeinterface InterfaceMethod java/lang/Runnable run ()V 1 
L44:    return 

        .stack same 
L45:    aload_0 
L46:    iconst_1 
L47:    putfield Field com/threerings/projectx/client/ProjectXApp akP Z 
L50:    ldc 'm.shortcut_offer' 
L52:    invokestatic Method com/threerings/projectx/util/a MO ()Ljava/lang/String; 
L55:    invokestatic Method com/threerings/util/N m (Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; 
L58:    astore_2 
L59:    new com/threerings/projectx/client/dR 
L62:    dup 
L63:    aload_0 
L64:    aload_0 
L65:    ldc 'projectx' 
L67:    aload_2 
L68:    ldc 'm.shortcut_reject' 
L70:    ldc 'm.shortcut_accept' 
L72:    getstatic Field com/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt OFFER_SHORTCUT Lcom/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt; 
L75:    aload_1 
L76:    invokespecial Method com/threerings/projectx/client/dR <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/projectx/util/A;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt;Ljava/lang/Runnable;)V 
L79:    invokevirtual Method com/threerings/projectx/client/dR show ()V 
L82:    return 
L83:    
        .linenumbertable 
            L0 1839 
            L38 1842 
            L44 1843 
            L45 1845 
            L50 1846 
            L59 1847 
            L82 1865 
        .end linenumbertable 
    .end code 
.end method 

.method protected final cr : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_1 
L1:     invokestatic Method com/threerings/projectx/client/ProjectXPrefs cu (Ljava/lang/String;)V 
L4:     aload_0 
L5:     aload_1 
L6:     invokespecial Method com/threerings/projectx/client/ProjectXApp cs (Ljava/lang/String;)V 
L9:     aload_0 
L10:    getfield Field com/threerings/projectx/client/ProjectXApp _imgcache Lcom/threerings/opengl/util/f; 
L13:    invokevirtual Method com/threerings/opengl/util/f clear ()V 
L16:    aload_0 
L17:    getfield Field com/threerings/projectx/client/ProjectXApp _cfgmgr Lcom/threerings/config/ConfigManager; 
L20:    ldc Class com/threerings/opengl/gui/config/UserInterfaceConfig 
L22:    invokevirtual Method com/threerings/config/ConfigManager an (Ljava/lang/Class;)V 
L25:    aload_0 
L26:    getfield Field com/threerings/projectx/client/ProjectXApp _cfgmgr Lcom/threerings/config/ConfigManager; 
L29:    ldc Class com/threerings/opengl/gui/config/StyleConfig 
L31:    invokevirtual Method com/threerings/config/ConfigManager an (Ljava/lang/Class;)V 
L34:    aload_0 
L35:    getfield Field com/threerings/projectx/client/ProjectXApp akk Lcom/threerings/projectx/client/chat/ProjectXChatDirector; 
L38:    invokevirtual Method com/threerings/projectx/client/chat/ProjectXChatDirector zj ()V 
L41:    return 
L42:    
        .linenumbertable 
            L0 1942 
            L4 1943 
            L9 1944 
            L16 1945 
            L25 1946 
            L34 1947 
            L41 1948 
        .end linenumbertable 
    .end code 
.end method 

.method private cs : (Ljava/lang/String;)V 
    .code stack 5 locals 2 
L0:     aload_1 
L1:     putstatic Field com/threerings/projectx/client/ProjectXApp _language Ljava/lang/String; 
L4:     aload_0 
L5:     getfield Field com/threerings/projectx/client/ProjectXApp _rsrcmgr Lcom/threerings/b/f; 
L8:     new com/threerings/projectx/client/dU 
L11:    dup 
L12:    aload_0 
L13:    aload_1 
L14:    invokespecial Method com/threerings/projectx/client/dU <init> (Lcom/threerings/projectx/client/ProjectXApp;Ljava/lang/String;)V 
L17:    invokevirtual Method com/threerings/b/f a (Lcom/threerings/b/f$a;)V 
L20:    aload_0 
L21:    getfield Field com/threerings/projectx/client/ProjectXApp _msgmgr Lcom/threerings/util/O; 
L24:    new java/util/Locale 
L27:    dup 
L28:    aload_1 
L29:    invokespecial Method java/util/Locale <init> (Ljava/lang/String;)V 
L32:    iconst_1 
L33:    invokevirtual Method com/threerings/util/O a (Ljava/util/Locale;Z)V 
L36:    return 
L37:    
        .linenumbertable 
            L0 1955 
            L4 1956 
            L20 1965 
            L36 1966 
        .end linenumbertable 
    .end code 
.end method 

.method protected final xw : ()V 
    .code stack 5 locals 4 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akE Lcom/threerings/projectx/data/ServerObject; 
L4:     getfield Field com/threerings/projectx/data/ServerObject scopeVariables Ljava/util/Set; 
L7:     invokestatic Method com/google/common/collect/ImmutableSet copyOf (Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet; 
L10:    astore_1 
L11:    aload_0 
L12:    getfield Field com/threerings/projectx/client/ProjectXApp akT Ljava/util/Set; 
L15:    aload_1 
L16:    invokestatic Method com/google/common/collect/Sets difference (Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView; 
L19:    invokevirtual Method com/google/common/collect/Sets$SetView iterator ()Ljava/util/Iterator; 
L22:    astore_2 

        .stack append Object java/util/Set Object java/util/Iterator 
L23:    aload_2 
L24:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L29:    ifeq L76 
L32:    aload_2 
L33:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L38:    checkcast java/lang/String 
L41:    astore_3 
L42:    aload_0 
L43:    new java/lang/StringBuilder 
L46:    dup 
L47:    invokespecial Method java/lang/StringBuilder <init> ()V 
L50:    ldc '__server__' 
L52:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L55:    aload_3 
L56:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L59:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L62:    new com/threerings/expr/af 
L65:    dup 
L66:    iconst_0 
L67:    invokespecial Method com/threerings/expr/af <init> (Z)V 
L70:    invokevirtual Method com/threerings/projectx/client/ProjectXApp put (Ljava/lang/String;Ljava/lang/Object;)V 
L73:    goto L23 

        .stack chop 1 
L76:    aload_0 
L77:    aload_1 
L78:    putfield Field com/threerings/projectx/client/ProjectXApp akT Ljava/util/Set; 
L81:    aload_0 
L82:    getfield Field com/threerings/projectx/client/ProjectXApp akT Ljava/util/Set; 
L85:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L90:    astore_2 

        .stack append Object java/util/Iterator 
L91:    aload_2 
L92:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L97:    ifeq L144 
L100:   aload_2 
L101:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L106:   checkcast java/lang/String 
L109:   astore_3 
L110:   aload_0 
L111:   new java/lang/StringBuilder 
L114:   dup 
L115:   invokespecial Method java/lang/StringBuilder <init> ()V 
L118:   ldc '__server__' 
L120:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L123:   aload_3 
L124:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L127:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L130:   new com/threerings/expr/af 
L133:   dup 
L134:   iconst_1 
L135:   invokespecial Method com/threerings/expr/af <init> (Z)V 
L138:   invokevirtual Method com/threerings/projectx/client/ProjectXApp put (Ljava/lang/String;Ljava/lang/Object;)V 
L141:   goto L91 

        .stack chop 1 
L144:   return 
L145:   
        .linenumbertable 
            L0 1973 
            L11 1974 
            L42 1975 
            L76 1977 
            L81 1978 
            L110 1979 
            L144 1981 
        .end linenumbertable 
    .end code 
.end method 

.method public bridge synthetic getApp : ()Lcom/threerings/opengl/e; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     dup 
L2:     astore_1 
L3:     areturn 
L4:     
        .linenumbertable 
            L0 190 
        .end linenumbertable 
    .end code 
.end method 

.method public final bridge synthetic getRoot : ()Lcom/threerings/opengl/gui/N; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     dup 
L2:     astore_1 
L3:     getfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eh; 
L6:     areturn 
L7:     
        .linenumbertable 
            L0 190 
        .end linenumbertable 
    .end code 
.end method 

.method static synthetic a : (Lcom/threerings/projectx/client/ProjectXApp;)Lcom/threerings/expr/ag; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _streamGain Lcom/threerings/expr/ag; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 190 
        .end linenumbertable 
    .end code 
.end method 

.method static synthetic b : (Lcom/threerings/projectx/client/ProjectXApp;)Lcom/threerings/expr/ag; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _streamGain Lcom/threerings/expr/ag; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 190 
        .end linenumbertable 
    .end code 
.end method 

.method static synthetic c : (Lcom/threerings/projectx/client/ProjectXApp;)Lcom/threerings/expr/ag; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _streamGain Lcom/threerings/expr/ag; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 190 
        .end linenumbertable 
    .end code 
.end method 

.method static synthetic d : (Lcom/threerings/projectx/client/ProjectXApp;)Lcom/threerings/expr/ag; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _streamGain Lcom/threerings/expr/ag; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 190 
        .end linenumbertable 
    .end code 
.end method 

.method static synthetic e : (Lcom/threerings/projectx/client/ProjectXApp;)V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokespecial Method com/threerings/opengl/n shutdown ()V 
L4:     return 
L5:     
        .linenumbertable 
            L0 190 
        .end linenumbertable 
    .end code 
.end method 

.method static synthetic f : (Lcom/threerings/projectx/client/ProjectXApp;)Lcom/threerings/opengl/renderer/Renderer; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _renderer Lcom/threerings/opengl/renderer/Renderer; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 190 
        .end linenumbertable 
    .end code 
.end method 

.method static synthetic g : (Lcom/threerings/projectx/client/ProjectXApp;)Lcom/threerings/config/ConfigManager; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _cfgmgr Lcom/threerings/config/ConfigManager; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 190 
        .end linenumbertable 
    .end code 
.end method 

.method static synthetic h : (Lcom/threerings/projectx/client/ProjectXApp;)Lcom/threerings/config/ConfigManager; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _cfgmgr Lcom/threerings/config/ConfigManager; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 190 
        .end linenumbertable 
    .end code 
.end method 

.method static synthetic i : (Lcom/threerings/projectx/client/ProjectXApp;)Lcom/threerings/config/ConfigManager; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _cfgmgr Lcom/threerings/config/ConfigManager; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 190 
        .end linenumbertable 
    .end code 
.end method 

.method static <clinit> : ()V 
    .code stack 6 locals 0 
L0:     new com/samskivert/swing/RuntimeAdjust$b 
L3:     dup 
L4:     ldc 'Whether or not to hide the UI.' 
L6:     ldc 'projectx.client.hide_ui' 
L8:     getstatic Field com/threerings/projectx/client/ProjectXPrefs aly Lcom/samskivert/util/Y; 
L11:    iconst_0 
L12:    invokespecial Method com/samskivert/swing/RuntimeAdjust$b <init> (Ljava/lang/String;Ljava/lang/String;Lcom/samskivert/util/Y;Z)V 
L15:    putstatic Field com/threerings/projectx/client/ProjectXApp ala Lcom/samskivert/swing/RuntimeAdjust$b; 
L18:    new com/samskivert/swing/RuntimeAdjust$b 
L21:    dup 
L22:    ldc "Enables 'Refresh Files' command (requires restart)." 
L24:    ldc 'projectx.client.check_timestamps' 
L26:    getstatic Field com/threerings/projectx/client/ProjectXPrefs aly Lcom/samskivert/util/Y; 
L29:    iconst_0 
L30:    invokespecial Method com/samskivert/swing/RuntimeAdjust$b <init> (Ljava/lang/String;Ljava/lang/String;Lcom/samskivert/util/Y;Z)V 
L33:    putstatic Field com/threerings/projectx/client/ProjectXApp alb Lcom/samskivert/swing/RuntimeAdjust$b; 
L36:    return 
L37:    
        .linenumbertable 
            L0 2243 
            L18 2247 
        .end linenumbertable 
    .end code 
.end method 
.innerclasses 
    com/threerings/projectx/client/ProjectXApp$c com/threerings/projectx/client/ProjectXApp c public 
    com/threerings/projectx/client/ProjectXApp$a com/threerings/projectx/client/ProjectXApp a public static interface abstract 
    com/threerings/projectx/client/ProjectXApp$b com/threerings/projectx/client/ProjectXApp b public static 
    com/threerings/projectx/client/ea [0] [0] 
    com/threerings/projectx/client/dZ [0] [0] 
    com/threerings/projectx/client/dY [0] [0] 
    com/threerings/projectx/client/dX [0] [0] 
    com/threerings/projectx/client/dW [0] [0] 
    com/threerings/projectx/client/dU [0] [0] 
    com/threerings/projectx/client/dT [0] [0] 
    com/threerings/projectx/client/dS [0] [0] 
    com/threerings/projectx/client/dR [0] [0] 
    com/threerings/projectx/client/dQ [0] [0] 
    com/threerings/projectx/client/dP [0] [0] 
    com/threerings/projectx/client/dO [0] [0] 
    com/threerings/projectx/client/dL [0] [0] 
    com/threerings/projectx/client/dK [0] [0] 
    com/threerings/projectx/client/dJ [0] [0] 
    com/threerings/projectx/client/dH [0] [0] 
    com/threerings/projectx/client/dG [0] [0] 
    com/threerings/projectx/client/dF [0] [0] 
    com/threerings/projectx/client/dE [0] [0] 
    com/threerings/projectx/client/ProjectXApp$15 [0] [0] 
    com/threerings/projectx/client/dD [0] [0] 
    com/threerings/projectx/client/dC [0] [0] 
    com/threerings/projectx/client/dz [0] [0] 
    com/threerings/projectx/client/dy [0] [0] 
    com/threerings/projectx/client/dx [0] [0] 
    com/threerings/projectx/client/eg [0] [0] 
    com/threerings/projectx/client/ef [0] [0] 
    com/threerings/projectx/client/ee [0] [0] 
    com/threerings/projectx/client/ed [0] [0] 
    com/threerings/projectx/client/ec [0] [0] 
    com/threerings/projectx/client/eb [0] [0] 
    com/threerings/projectx/client/dV [0] [0] 
    com/threerings/projectx/client/dI [0] [0] 
    com/threerings/projectx/client/du [0] [0] 
    com/samskivert/swing/RuntimeAdjust$b com/samskivert/swing/RuntimeAdjust b public static 
    com/threerings/projectx/admin/data/Survey$Rating com/threerings/projectx/admin/data/Survey Rating public static 
    com/threerings/projectx/admin/data/Survey$Question com/threerings/projectx/admin/data/Survey Question public static abstract 
    com/threerings/projectx/client/ProjectXPrefs$d com/threerings/projectx/client/ProjectXPrefs d public static 
    com/threerings/projectx/client/ProjectXPrefs$RenderQuality com/threerings/projectx/client/ProjectXPrefs RenderQuality public static final enum 
    com/threerings/crowd/chat/client/k$a com/threerings/crowd/chat/client/k a public static interface abstract 
    com/samskivert/util/ObserverList$b com/samskivert/util/ObserverList b public static interface abstract 
    com/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt com/threerings/projectx/client/ProjectXPrefs ConfirmPrompt public static final enum 
    com/threerings/b/f$a com/threerings/b/f a public static interface abstract 
    com/google/common/collect/Sets$SetView com/google/common/collect/Sets SetView public static abstract 
.end innerclasses 
.sourcefile SourceFile 
.end class 
