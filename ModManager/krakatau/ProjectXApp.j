.version 49 0
.class public super com/threerings/projectx/client/ProjectXApp
.super com/threerings/opengl/f
.implements com/threerings/projectx/data/ProjectXCodes
.implements com/threerings/projectx/util/A
.field private aku Lcom/samskivert/util/n;
.field protected Vc Lcom/threerings/presents/client/Client;
.field private akv I
.field protected akw Lcom/threerings/projectx/client/ah;
.field private akx Lcom/threerings/projectx/client/eg;
.field private aky Lcom/threerings/crowd/client/o;
.field private akz Lcom/threerings/projectx/client/chat/ProjectXChatDirector;
.field private akA Lcom/threerings/whirled/a/d;
.field protected akB Lcom/threerings/crowd/chat/client/k;
.field protected akC Lcom/threerings/projectx/client/ev;
.field private akD Lcom/threerings/projectx/client/fo;
.field private akE Lcom/threerings/projectx/client/fo;
.field private akF Lcom/threerings/projectx/social/client/n;
.field private akG Lcom/threerings/projectx/admin/client/b;
.field private akH Lcom/threerings/projectx/guild/client/L;
.field private akI Lcom/threerings/projectx/guild/client/az;
.field private akJ Lcom/threerings/projectx/dungeon/client/R;
.field private akK Lcom/threerings/projectx/client/dj;
.field protected akL Lcom/threerings/projectx/partner/client/SteamDirector;
.field private akM Lcom/threerings/projectx/partner/client/a;
.field protected akN Lcom/threerings/projectx/client/ef;
.field private akO Lcom/threerings/projectx/client/ax;
.field protected akP Lcom/threerings/opengl/i;
.field private akQ Lcom/threerings/projectx/client/hud/n;
.field protected akR Ljava/lang/String;
.field private akS Ljava/lang/String;
.field private akT Ljava/lang/String;
.field protected akU Lcom/threerings/projectx/data/ServerObject;
.field protected akV Lcom/threerings/projectx/client/ProjectXApp$b;
.field private akW Lcom/samskivert/util/ObserverList; .fieldattributes
    .signature Lcom/samskivert/util/ObserverList<Lcom/threerings/projectx/client/ProjectXApp$a;>;
.end fieldattributes
.field private akX Lcom/threerings/openal/m;
.field protected akY Lcom/samskivert/util/z; .fieldattributes
    .signature Lcom/samskivert/util/z<Lcom/threerings/tudey/data/TudeySceneModel;>;
.end fieldattributes
.field protected akZ Z
.field protected ala Ljava/lang/String;
.field private alb J
.field private alc Z
.field protected ald Z
.field protected ale Z
.field protected alf Z
.field private alg J
.field private alh J
.field private ali Lcom/threerings/projectx/client/s;
.field private alj Ljava/util/Set; .fieldattributes
    .signature Ljava/util/Set<Ljava/lang/String;>;
.end fieldattributes
.field protected alk Z
.field private alm Lcom/google/common/eventbus/g;
.field protected aln Lcom/threerings/presents/dobj/d;
.field private alo Lcom/threerings/presents/dobj/k;
.field private alp Lcom/samskivert/util/D;
.field private alq Ljava/lang/Runnable;
.field private static _language Ljava/lang/String;
.field private static alr Lcom/samskivert/swing/RuntimeAdjust$b;
.field private static als Lcom/samskivert/swing/RuntimeAdjust$b;

.method public static main : ([Ljava/lang/String;)V
    .code stack 10 locals 8
L0:     ldc 'com.threerings.io.enumPolicy'
L2:     ldc 'ORDINAL'
L4:     invokestatic Method java/lang/System setProperty (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
L7:     pop
L8:     invokestatic Method com/samskivert/util/ak gd ()Z
L11:    ifeq L20
L14:    invokestatic Method javax/swing/UIManager getCrossPlatformLookAndFeelClassName ()Ljava/lang/String;
L17:    invokestatic Method javax/swing/UIManager setLookAndFeel (Ljava/lang/String;)V
L20:    ldc 'projectx.log'
L22:    invokestatic Method com/threerings/util/V dH (Ljava/lang/String;)V
L25:    aconst_null
L26:    astore_1
L27:    iconst_0
L28:    istore_2
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
L53:    invokestatic Method com/samskivert/util/d b ([Ljava/lang/Object;II)[Ljava/lang/Object;
L56:    checkcast [Ljava/lang/String;
L59:    astore_0
L60:    goto L69
L63:    iinc 2 1
L66:    goto L29
L69:    aload_0
L70:    arraylength
L71:    ifle L80
L74:    aload_0
L75:    iconst_0
L76:    aaload
L77:    goto L85
L80:    ldc 'username'
L82:    invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String;
L85:    astore_2
L86:    aload_0
L87:    arraylength
L88:    iconst_1
L89:    if_icmple L98
L92:    aload_0
L93:    iconst_1
L94:    aaload
L95:    goto L103
L98:    ldc 'password'
L100:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String;
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
L123:   ldc 'knight'
L125:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String;
L128:   astore 5
L130:   aload_0
L131:   arraylength
L132:   iconst_3
L133:   if_icmple L142
L136:   aload_0
L137:   iconst_3
L138:   aaload
L139:   goto L147
L142:   ldc 'action'
L144:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String;
L147:   astore 6
L149:   aload_0
L150:   arraylength
L151:   iconst_4
L152:   if_icmple L161
L155:   aload_0
L156:   iconst_4
L157:   aaload
L158:   goto L166
L161:   ldc 'arg'
L163:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String;
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
            L0 233
            L8 239
            L14 240
            L20 244
            L25 247
            L27 249
            L35 250
            L39 251
            L48 252
            L50 253
            L60 254
            L63 249
            L69 259
            L86 260
            L104 261
            L111 262
            L130 263
            L149 264
            L167 265
            L174 266
            L196 268
        .end linenumbertable
    .end code
.end method

.method public static cm : (Ljava/lang/String;)Ljava/io/File;
    .code stack 4 locals 3
L0:     ldc 'appdir'
L2:     invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String;
L5:     dup
L6:     astore_1
L7:     invokestatic Method com/samskivert/util/ar ac (Ljava/lang/String;)Z
L10:    ifeq L54
L13:    ldc '.projectx'
L15:    astore_1
L16:    ldc 'user.home'
L18:    invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String;
L21:    dup
L22:    astore_2
L23:    invokestatic Method com/samskivert/util/ar ac (Ljava/lang/String;)Z
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
            L0 275
            L6 276
            L13 277
            L16 278
            L22 279
            L29 280
            L54 283
        .end linenumbertable
    .end code
.end method

.method public static getLanguage : ()Ljava/lang/String;
    .code stack 1 locals 0
L0:     getstatic Field com/threerings/projectx/client/ProjectXApp _language Ljava/lang/String;
L3:     areturn
L4:
        .linenumbertable
            L0 291
        .end linenumbertable
    .end code
.end method

.method private <init> : (Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .code stack 9 locals 12
L0:     aload_0
L1:     invokespecial Method com/threerings/opengl/f <init> ()V
L4:     aload_0
L5:     new com/samskivert/util/n
L8:     dup
L9:     ldc 'projectx'
L11:    invokespecial Method com/samskivert/util/n <init> (Ljava/lang/String;)V
L14:    putfield Field com/threerings/projectx/client/ProjectXApp aku Lcom/samskivert/util/n;
L17:    aload_0
L18:    bipush 60
L20:    putfield Field com/threerings/projectx/client/ProjectXApp akv I
L23:    aload_0
L24:    invokestatic Method com/samskivert/util/ObserverList fV ()Lcom/samskivert/util/ObserverList;
L27:    putfield Field com/threerings/projectx/client/ProjectXApp akW Lcom/samskivert/util/ObserverList;
L30:    aload_0
L31:    new com/samskivert/util/HashIntMap
L34:    dup
L35:    invokespecial Method com/samskivert/util/HashIntMap <init> ()V
L38:    putfield Field com/threerings/projectx/client/ProjectXApp akY Lcom/samskivert/util/z;
L41:    aload_0
L42:    invokestatic Method com/google/common/collect/ImmutableSet of ()Lcom/google/common/collect/ImmutableSet;
L45:    putfield Field com/threerings/projectx/client/ProjectXApp alj Ljava/util/Set;
L48:    aload_0
L49:    new com/google/common/eventbus/d
L52:    dup
L53:    ldc 'ctx'
L55:    new com/threerings/projectx/client/dT
L58:    dup
L59:    aload_0
L60:    invokespecial Method com/threerings/projectx/client/dT <init> (Lcom/threerings/projectx/client/ProjectXApp;)V
L63:    invokespecial Method com/google/common/eventbus/d <init> (Ljava/lang/String;Ljava/util/concurrent/Executor;)V
L66:    putfield Field com/threerings/projectx/client/ProjectXApp alm Lcom/google/common/eventbus/g;
L69:    aload_0
L70:    new com/threerings/projectx/client/dU
L73:    dup
L74:    aload_0
L75:    invokespecial Method com/threerings/projectx/client/dU <init> (Lcom/threerings/projectx/client/ProjectXApp;)V
L78:    putfield Field com/threerings/projectx/client/ProjectXApp aln Lcom/threerings/presents/dobj/d;
L81:    aload_0
L82:    new com/threerings/projectx/client/dW
L85:    dup
L86:    aload_0
L87:    invokespecial Method com/threerings/projectx/client/dW <init> (Lcom/threerings/projectx/client/ProjectXApp;)V
L90:    putfield Field com/threerings/projectx/client/ProjectXApp alo Lcom/threerings/presents/dobj/k;
L93:    aload_0
L94:    new com/threerings/projectx/client/dX
L97:    dup
L98:    aload_0
L99:    aload_0
L100:   invokevirtual Method com/threerings/projectx/client/ProjectXApp getRunQueue ()Lcom/samskivert/util/al;
L103:   invokespecial Method com/threerings/projectx/client/dX <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/samskivert/util/al;)V
L106:   putfield Field com/threerings/projectx/client/ProjectXApp alp Lcom/samskivert/util/D;
L109:   aload_0
L110:   new com/threerings/projectx/client/dY
L113:   dup
L114:   aload_0
L115:   invokespecial Method com/threerings/projectx/client/dY <init> (Lcom/threerings/projectx/client/ProjectXApp;)V
L118:   putfield Field com/threerings/projectx/client/ProjectXApp alq Ljava/lang/Runnable;
L121:   aload_0
L122:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs getLanguage ()Ljava/lang/String;
L125:   invokespecial Method com/threerings/projectx/client/ProjectXApp cr (Ljava/lang/String;)V
L128:   getstatic Field java/util/Locale ENGLISH Ljava/util/Locale;
L131:   invokestatic Method java/util/Locale setDefault (Ljava/util/Locale;)V
L134:   invokestatic Method com/threerings/projectx/util/a Lk ()Z
L137:   putstatic Field com/threerings/editor/m GD Z
L140:   aload_0
L141:   getfield Field com/threerings/projectx/client/ProjectXApp _cfgmgr Lcom/threerings/config/ConfigManager;
L144:   invokevirtual Method com/threerings/config/ConfigManager init ()V
L147:   ldc 'getdown-pro-old.jar'
L149:   invokestatic Method com/threerings/projectx/client/ProjectXApp cm (Ljava/lang/String;)Ljava/io/File;
L152:   ldc 'getdown-pro.jar'
L154:   invokestatic Method com/threerings/projectx/client/ProjectXApp cm (Ljava/lang/String;)Ljava/io/File;
L157:   ldc 'code/getdown-pro-new.jar'
L159:   invokestatic Method com/threerings/projectx/client/ProjectXApp cm (Ljava/lang/String;)Ljava/io/File;
L162:   astore 11
L164:   astore 10
L166:   astore 9
L168:   aload 11
L170:   invokevirtual Method java/io/File exists ()Z
L173:   ifeq L190
L176:   aload 11
L178:   invokevirtual Method java/io/File length ()J
L181:   aload 10
L183:   invokevirtual Method java/io/File length ()J
L186:   lcmp
L187:   ifne L193
L190:   goto L460
L193:   getstatic Field com/threerings/getdown/a Lh Lcom/a/c/n;
L196:   new java/lang/StringBuilder
L199:   dup
L200:   ldc 'Updating Getdown with '
L202:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L205:   aload 11
L207:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder;
L210:   ldc '...'
L212:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L215:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L218:   iconst_0
L219:   anewarray java/lang/Object
L222:   invokevirtual Method com/a/c/n a (Ljava/lang/Object;[Ljava/lang/Object;)V
L225:   aload 9
L227:   invokevirtual Method java/io/File exists ()Z
L230:   ifeq L239
L233:   aload 9
L235:   invokevirtual Method java/io/File delete ()Z
L238:   pop
L239:   aload 10
L241:   invokevirtual Method java/io/File exists ()Z
L244:   ifeq L257
L247:   aload 10
L249:   aload 9
L251:   invokevirtual Method java/io/File renameTo (Ljava/io/File;)Z
L254:   ifeq L384
L257:   aload 11
L259:   aload 10
L261:   invokevirtual Method java/io/File renameTo (Ljava/io/File;)Z
L264:   ifeq L330
L267:   aload 9
L269:   invokevirtual Method java/io/File delete ()Z
L272:   pop
        .catch java/io/IOException from L273 to L295 using L298
L273:   new java/io/FileInputStream
L276:   dup
L277:   aload 10
L279:   invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V
L282:   new java/io/FileOutputStream
L285:   dup
L286:   aload 11
L288:   invokespecial Method java/io/FileOutputStream <init> (Ljava/io/File;)V
L291:   invokestatic Method com/google/common/base/Functions a (Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;
L294:   pop
L295:   goto L460
L298:   astore 9
L300:   getstatic Field com/threerings/getdown/a Lh Lcom/a/c/n;
L303:   new java/lang/StringBuilder
L306:   dup
L307:   ldc 'Error copying updated Getdown back: '
L309:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L312:   aload 9
L314:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder;
L317:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L320:   iconst_0
L321:   anewarray java/lang/Object
L324:   invokevirtual Method com/a/c/n b (Ljava/lang/Object;[Ljava/lang/Object;)V
L327:   goto L460
L330:   getstatic Field com/threerings/getdown/a Lh Lcom/a/c/n;
L333:   new java/lang/StringBuilder
L336:   dup
L337:   ldc 'Unable to renameTo('
L339:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L342:   aload 9
L344:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder;
L347:   ldc ').'
L349:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L352:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L355:   iconst_0
L356:   anewarray java/lang/Object
L359:   invokevirtual Method com/a/c/n b (Ljava/lang/Object;[Ljava/lang/Object;)V
L362:   aload 9
L364:   aload 10
L366:   invokevirtual Method java/io/File renameTo (Ljava/io/File;)Z
L369:   ifne L384
L372:   getstatic Field com/threerings/getdown/a Lh Lcom/a/c/n;
L375:   ldc 'Oh God, why dost thee scorn me so.'
L377:   iconst_0
L378:   anewarray java/lang/Object
L381:   invokevirtual Method com/a/c/n b (Ljava/lang/Object;[Ljava/lang/Object;)V
L384:   getstatic Field com/threerings/getdown/a Lh Lcom/a/c/n;
L387:   new java/lang/StringBuilder
L390:   dup
L391:   ldc 'Attempting to upgrade by copying over '
L393:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L396:   aload 10
L398:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder;
L401:   ldc '...'
L403:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L406:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L409:   iconst_0
L410:   anewarray java/lang/Object
L413:   invokevirtual Method com/a/c/n a (Ljava/lang/Object;[Ljava/lang/Object;)V
        .catch java/io/IOException from L416 to L438 using L441
L416:   new java/io/FileInputStream
L419:   dup
L420:   aload 11
L422:   invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V
L425:   new java/io/FileOutputStream
L428:   dup
L429:   aload 10
L431:   invokespecial Method java/io/FileOutputStream <init> (Ljava/io/File;)V
L434:   invokestatic Method com/google/common/base/Functions a (Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;
L437:   pop
L438:   goto L460
L441:   astore 9
L443:   getstatic Field com/threerings/getdown/a Lh Lcom/a/c/n;
L446:   ldc 'Mayday! Brute force copy method also failed.'
L448:   iconst_1
L449:   anewarray java/lang/Object
L452:   dup
L453:   iconst_0
L454:   aload 9
L456:   aastore
L457:   invokevirtual Method com/a/c/n b (Ljava/lang/Object;[Ljava/lang/Object;)V
L460:   aload_0
L461:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs l (Lcom/threerings/projectx/util/A;)V
L464:   aload_0
L465:   astore 9
L467:   iconst_0
L468:   istore 10
L470:   ldc 'reset_video'
L472:   invokestatic Method java/lang/Boolean getBoolean (Ljava/lang/String;)Z
L475:   ifeq L493
L478:   getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/V;
L481:   ldc 'Resetting video!'
L483:   iconst_0
L484:   anewarray java/lang/Object
L487:   invokevirtual Method com/samskivert/util/V e (Ljava/lang/Object;[Ljava/lang/Object;)V
L490:   iconst_1
L491:   istore 10
L493:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs ww ()I
L496:   iconst_2
L497:   if_icmple L518
L500:   getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/V;
L503:   ldc 'Resetting video due to like issue with startup count.'
L505:   iconst_0
L506:   anewarray java/lang/Object
L509:   invokevirtual Method com/samskivert/util/V e (Ljava/lang/Object;[Ljava/lang/Object;)V
L512:   iconst_1
L513:   istore 10
L515:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs wx ()V
        .catch java/lang/Exception from L518 to L558 using L561
L518:   ldc 'resetvideo.now'
L520:   invokestatic Method com/threerings/projectx/client/ProjectXApp cm (Ljava/lang/String;)Ljava/io/File;
L523:   dup
L524:   astore 11
L526:   invokevirtual Method java/io/File exists ()Z
L529:   ifeq L558
L532:   aload 11
L534:   invokevirtual Method java/io/File delete ()Z
L537:   ifeq L546
L540:   iconst_1
L541:   istore 10
L543:   goto L580
L546:   getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/V;
L549:   ldc 'Video mode not reset because file is not deletable.'
L551:   iconst_0
L552:   anewarray java/lang/Object
L555:   invokevirtual Method com/samskivert/util/V f (Ljava/lang/Object;[Ljava/lang/Object;)V
L558:   goto L580
L561:   astore 11
L563:   getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/V;
L566:   ldc 'Video mode not reset.'
L568:   iconst_1
L569:   anewarray java/lang/Object
L572:   dup
L573:   iconst_0
L574:   aload 11
L576:   aastore
L577:   invokevirtual Method com/samskivert/util/V f (Ljava/lang/Object;[Ljava/lang/Object;)V
L580:   iload 10
L582:   ifeq L597
L585:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs$d xr ()Lcom/threerings/projectx/client/ProjectXPrefs$d;
L588:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs a (Lcom/threerings/projectx/client/ProjectXPrefs$d;)V
L591:   aload 9
L593:   iconst_1
L594:   putfield Field com/threerings/projectx/client/ProjectXApp alk Z
L597:   aconst_null
L598:   astore 9
L600:   aload_1
L601:   ifnull L630
L604:   aload_2
L605:   ifnull L630
L608:   new com/threerings/projectx/data/ProjectXCredentials
L611:   dup
L612:   new com/threerings/util/Name
L615:   dup
L616:   aload_1
L617:   invokespecial Method com/threerings/util/Name <init> (Ljava/lang/String;)V
L620:   aload_2
L621:   iload_3
L622:   invokespecial Method com/threerings/projectx/data/ProjectXCredentials <init> (Lcom/threerings/util/Name;Ljava/lang/String;Z)V
L625:   astore 9
L627:   goto L679
L630:   aload_1
L631:   ifnull L657
L634:   aload 7
L636:   invokestatic Method com/samskivert/util/ar ac (Ljava/lang/String;)Z
L639:   ifne L657
L642:   new com/threerings/projectx/data/ProjectXCredentials
L645:   dup
L646:   aload 7
L648:   aload_1
L649:   invokespecial Method com/threerings/projectx/data/ProjectXCredentials <init> (Ljava/lang/String;Ljava/lang/String;)V
L652:   astore 9
L654:   goto L679
L657:   invokestatic Method com/threerings/projectx/util/a LM ()Z
L660:   ifeq L679
L663:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs wF ()Z
L666:   ifeq L679
L669:   new com/threerings/projectx/data/ProjectXCredentials
L672:   dup
L673:   iconst_1
L674:   invokespecial Method com/threerings/projectx/data/ProjectXCredentials <init> (Z)V
L677:   astore 9
L679:   aload_0
L680:   new com/threerings/projectx/client/du
L683:   dup
L684:   aload_0
L685:   aload 9
L687:   aload_0
L688:   invokevirtual Method com/threerings/projectx/client/ProjectXApp getRunQueue ()Lcom/samskivert/util/al;
L691:   invokespecial Method com/threerings/projectx/client/du <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/presents/net/Credentials;Lcom/samskivert/util/al;)V
L694:   putfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L697:   aload_0
L698:   aload 4
L700:   putfield Field com/threerings/projectx/client/ProjectXApp akR Ljava/lang/String;
L703:   aload_0
L704:   aload 5
L706:   putfield Field com/threerings/projectx/client/ProjectXApp akS Ljava/lang/String;
L709:   aload_0
L710:   aload 6
L712:   putfield Field com/threerings/projectx/client/ProjectXApp akT Ljava/lang/String;
L715:   aload_0
L716:   getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L719:   invokestatic Method com/threerings/projectx/util/a kY ()J
L722:   invokestatic Method java/lang/String valueOf (J)Ljava/lang/String;
L725:   invokevirtual Method com/threerings/presents/client/Client setVersion (Ljava/lang/String;)V
L728:   aload_0
L729:   getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L732:   ldc 'presents.admin'
L734:   invokevirtual Method com/threerings/presents/client/Client bG (Ljava/lang/String;)V
L737:   aload_0
L738:   getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L741:   invokestatic Method com/threerings/projectx/util/a Lt ()Ljava/lang/String;
L744:   invokevirtual Method com/threerings/presents/client/Client bF (Ljava/lang/String;)Z
L747:   pop
L748:   aload_0
L749:   getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L752:   iconst_1
L753:   invokevirtual Method com/threerings/presents/client/Client A (Z)V
L756:   aload_0
L757:   getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L760:   new com/threerings/projectx/client/dI
L763:   dup
L764:   aload_0
L765:   invokespecial Method com/threerings/projectx/client/dI <init> (Lcom/threerings/projectx/client/ProjectXApp;)V
L768:   invokevirtual Method com/threerings/presents/client/Client b (Lcom/threerings/presents/client/J;)V
L771:   aload_0
L772:   new com/threerings/projectx/client/eg
L775:   dup
L776:   aload_0
L777:   invokespecial Method com/threerings/projectx/client/eg <init> (Lcom/threerings/projectx/util/A;)V
L780:   putfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eg;
L783:   aload_0
L784:   new com/threerings/crowd/client/o
L787:   dup
L788:   aload_0
L789:   invokespecial Method com/threerings/crowd/client/o <init> (Lcom/threerings/presents/b/b;)V
L792:   putfield Field com/threerings/projectx/client/ProjectXApp aky Lcom/threerings/crowd/client/o;
L795:   aload_0
L796:   new com/threerings/projectx/client/dV
L799:   dup
L800:   aload_0
L801:   aload_0
L802:   invokespecial Method com/threerings/projectx/client/dV <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/projectx/util/A;)V
L805:   putfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/projectx/client/chat/ProjectXChatDirector;
L808:   aload_0
L809:   new com/threerings/whirled/a/d
L812:   dup
L813:   aload_0
L814:   aload_0
L815:   getfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eg;
L818:   aload_0
L819:   astore 9
L821:   ldc 'scenes'
L823:   invokestatic Method com/threerings/projectx/client/ProjectXApp cm (Ljava/lang/String;)Ljava/io/File;
L826:   dup
L827:   astore 10
L829:   invokevirtual Method java/io/File isDirectory ()Z
L832:   ifne L855
L835:   aload 10
L837:   invokevirtual Method java/io/File exists ()Z
L840:   ifeq L849
L843:   aload 10
L845:   invokevirtual Method java/io/File delete ()Z
L848:   pop
L849:   aload 10
L851:   invokevirtual Method java/io/File mkdirs ()Z
L854:   pop
L855:   new com/threerings/projectx/client/dF
L858:   dup
L859:   aload 9
L861:   aload 10
L863:   invokespecial Method com/threerings/projectx/client/dF <init> (Lcom/threerings/projectx/client/ProjectXApp;Ljava/io/File;)V
L866:   new com/threerings/tudey/util/n
L869:   dup
L870:   invokespecial Method com/threerings/tudey/util/n <init> ()V
L873:   invokespecial Method com/threerings/whirled/a/d <init> (Lcom/threerings/presents/b/b;Lcom/threerings/crowd/client/d;Lcom/threerings/whirled/a/a/a;Lcom/threerings/whirled/util/a;)V
L876:   putfield Field com/threerings/projectx/client/ProjectXApp akA Lcom/threerings/whirled/a/d;
L879:   aload_0
L880:   new com/threerings/projectx/client/ev
L883:   dup
L884:   aload_0
L885:   invokespecial Method com/threerings/projectx/client/ev <init> (Lcom/threerings/projectx/util/A;)V
L888:   putfield Field com/threerings/projectx/client/ProjectXApp akC Lcom/threerings/projectx/client/ev;
L891:   aload_0
L892:   new com/threerings/projectx/client/fo
L895:   dup
L896:   aload_0
L897:   ldc 'zoneGeneralOid'
L899:   getstatic Field com/threerings/projectx/data/ChatType ZONE_GENERAL Lcom/threerings/projectx/data/ChatType;
L902:   invokevirtual Method com/threerings/projectx/data/ChatType toString ()Ljava/lang/String;
L905:   invokespecial Method com/threerings/projectx/client/fo <init> (Lcom/threerings/projectx/util/A;Ljava/lang/String;Ljava/lang/String;)V
L908:   putfield Field com/threerings/projectx/client/ProjectXApp akD Lcom/threerings/projectx/client/fo;
L911:   aload_0
L912:   new com/threerings/projectx/client/fo
L915:   dup
L916:   aload_0
L917:   ldc 'zoneTradeOid'
L919:   getstatic Field com/threerings/projectx/data/ChatType ZONE_TRADE Lcom/threerings/projectx/data/ChatType;
L922:   invokevirtual Method com/threerings/projectx/data/ChatType toString ()Ljava/lang/String;
L925:   invokespecial Method com/threerings/projectx/client/fo <init> (Lcom/threerings/projectx/util/A;Ljava/lang/String;Ljava/lang/String;)V
L928:   putfield Field com/threerings/projectx/client/ProjectXApp akE Lcom/threerings/projectx/client/fo;
L931:   invokestatic Method com/threerings/projectx/util/a Lk ()Z
L934:   ifeq L948
L937:   new com/threerings/config/dist/a/a
L940:   aload_0
L941:   aload_0
L942:   getfield Field com/threerings/projectx/client/ProjectXApp _cfgmgr Lcom/threerings/config/ConfigManager;
L945:   invokespecial Method com/threerings/config/dist/a/a <init> (Lcom/threerings/presents/b/b;Lcom/threerings/config/ConfigManager;)V
L948:   aload_0
L949:   new com/threerings/projectx/social/client/n
L952:   dup
L953:   aload_0
L954:   invokespecial Method com/threerings/projectx/social/client/n <init> (Lcom/threerings/projectx/util/A;)V
L957:   putfield Field com/threerings/projectx/client/ProjectXApp akF Lcom/threerings/projectx/social/client/n;
L960:   aload_0
L961:   new com/threerings/projectx/admin/client/b
L964:   dup
L965:   aload_0
L966:   invokespecial Method com/threerings/projectx/admin/client/b <init> (Lcom/threerings/projectx/util/A;)V
L969:   putfield Field com/threerings/projectx/client/ProjectXApp akG Lcom/threerings/projectx/admin/client/b;
L972:   aload_0
L973:   new com/threerings/projectx/guild/client/L
L976:   dup
L977:   aload_0
L978:   invokespecial Method com/threerings/projectx/guild/client/L <init> (Lcom/threerings/projectx/util/A;)V
L981:   putfield Field com/threerings/projectx/client/ProjectXApp akH Lcom/threerings/projectx/guild/client/L;
L984:   aload_0
L985:   new com/threerings/projectx/guild/client/az
L988:   dup
L989:   aload_0
L990:   invokespecial Method com/threerings/projectx/guild/client/az <init> (Lcom/threerings/projectx/util/A;)V
L993:   putfield Field com/threerings/projectx/client/ProjectXApp akI Lcom/threerings/projectx/guild/client/az;
L996:   aload_0
L997:   new com/threerings/projectx/dungeon/client/R
L1000:  dup
L1001:  aload_0
L1002:  invokespecial Method com/threerings/projectx/dungeon/client/R <init> (Lcom/threerings/projectx/util/A;)V
L1005:  putfield Field com/threerings/projectx/client/ProjectXApp akJ Lcom/threerings/projectx/dungeon/client/R;
L1008:  aload_0
L1009:  new com/threerings/projectx/client/dj
L1012:  dup
L1013:  aload_0
L1014:  invokespecial Method com/threerings/projectx/client/dj <init> (Lcom/threerings/projectx/util/A;)V
L1017:  putfield Field com/threerings/projectx/client/ProjectXApp akK Lcom/threerings/projectx/client/dj;
L1020:  aload_0
L1021:  new com/threerings/projectx/partner/client/SteamDirector
L1024:  dup
L1025:  aload_0
L1026:  aload 8
L1028:  invokespecial Method com/threerings/projectx/partner/client/SteamDirector <init> (Lcom/threerings/projectx/util/A;Ljava/lang/String;)V
L1031:  putfield Field com/threerings/projectx/client/ProjectXApp akL Lcom/threerings/projectx/partner/client/SteamDirector;
L1034:  aload_0
L1035:  new com/threerings/projectx/partner/client/a
L1038:  dup
L1039:  aload_0
L1040:  invokespecial Method com/threerings/projectx/partner/client/a <init> (Lcom/threerings/projectx/util/A;)V
L1043:  putfield Field com/threerings/projectx/client/ProjectXApp akM Lcom/threerings/projectx/partner/client/a;
L1046:  aload_0
L1047:  dup
L1048:  astore_1
L1049:  iconst_1
L1050:  invokevirtual Method com/threerings/projectx/client/ProjectXApp at (Z)V
L1053:  invokestatic Method com/samskivert/util/ak gd ()Z
L1056:  ifeq L1075
L1059:  aload_0
L1060:  iconst_1
L1061:  anewarray java/lang/String
L1064:  dup
L1065:  iconst_0
L1066:  ldc 'ui/icon/icon_128.png'
L1068:  aastore
L1069:  invokevirtual Method com/threerings/projectx/client/ProjectXApp setIcon ([Ljava/lang/String;)V
L1072:  goto L1115
L1075:  invokestatic Method com/samskivert/util/ak ge ()Z
L1078:  ifeq L1097
L1081:  aload_0
L1082:  iconst_1
L1083:  anewarray java/lang/String
L1086:  dup
L1087:  iconst_0
L1088:  ldc 'ui/icon/icon_32.png'
L1090:  aastore
L1091:  invokevirtual Method com/threerings/projectx/client/ProjectXApp setIcon ([Ljava/lang/String;)V
L1094:  goto L1115
L1097:  aload_0
L1098:  iconst_2
L1099:  anewarray java/lang/String
L1102:  dup
L1103:  iconst_0
L1104:  ldc 'ui/icon/icon_32.png'
L1106:  aastore
L1107:  dup
L1108:  iconst_1
L1109:  ldc 'ui/icon/icon_16.png'
L1111:  aastore
L1112:  invokevirtual Method com/threerings/projectx/client/ProjectXApp setIcon ([Ljava/lang/String;)V
L1115:  aload_0
L1116:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs n (Lcom/threerings/projectx/util/A;)Lcom/threerings/projectx/client/ProjectXPrefs$d;
L1119:  aload_0
L1120:  invokevirtual Method com/threerings/projectx/client/ProjectXPrefs$d p (Lcom/threerings/projectx/util/A;)V
L1123:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs getVSyncEnabled ()Z
L1126:  invokestatic Method org/lwjgl/opengl/Display setVSyncEnabled (Z)V
L1129:  aload_0
L1130:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs getCompatibilityMode ()Z
L1133:  invokevirtual Method com/threerings/projectx/client/ProjectXApp setCompatibilityMode (Z)V
L1136:  aload_0
L1137:  aload_0
L1138:  getfield Field com/threerings/projectx/client/ProjectXApp _compatibilityMode Z
L1141:  ifne L1154
L1144:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs getRenderEffects ()Z
L1147:  ifeq L1154
L1150:  iconst_1
L1151:  goto L1155
L1154:  iconst_0
L1155:  invokevirtual Method com/threerings/projectx/client/ProjectXApp setRenderEffects (Z)V
L1158:  aload_0
L1159:  getfield Field com/threerings/projectx/client/ProjectXApp _streamGain Lcom/threerings/expr/aj;
L1162:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs wG ()F
L1165:  putfield Field com/threerings/expr/aj value F
L1168:  aload_0
L1169:  getfield Field com/threerings/projectx/client/ProjectXApp _soundmgr Lcom/threerings/openal/s;
L1172:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs wH ()F
L1175:  invokevirtual Method com/threerings/openal/s C (F)V
L1178:  aload_0
L1179:  new com/threerings/projectx/client/ef
L1182:  dup
L1183:  aload_0
L1184:  invokespecial Method com/threerings/projectx/client/ef <init> (Lcom/threerings/projectx/util/A;)V
L1187:  putfield Field com/threerings/projectx/client/ProjectXApp akN Lcom/threerings/projectx/client/ef;
L1190:  aload_0
L1191:  getfield Field com/threerings/projectx/client/ProjectXApp akN Lcom/threerings/projectx/client/ef;
L1194:  new com/threerings/opengl/renderer/Color4f
L1197:  dup
L1198:  fconst_0
L1199:  fconst_0
L1200:  fconst_0
L1201:  ldc +0.5f
L1203:  invokespecial Method com/threerings/opengl/renderer/Color4f <init> (FFFF)V
L1206:  invokevirtual Method com/threerings/projectx/client/ef setModalShade (Lcom/threerings/opengl/renderer/Color4f;)V
L1209:  aload_0
L1210:  getfield Field com/threerings/projectx/client/ProjectXApp akN Lcom/threerings/projectx/client/ef;
L1213:  invokevirtual Method com/threerings/projectx/client/ef getSoundGroup ()Lcom/threerings/openal/r;
L1216:  invokestatic Method com/threerings/projectx/client/ProjectXPrefs wI ()F
L1219:  invokevirtual Method com/threerings/openal/r C (F)V
L1222:  aload_0
L1223:  getfield Field com/threerings/projectx/client/ProjectXApp akN Lcom/threerings/projectx/client/ef;
L1226:  invokestatic Method com/threerings/projectx/util/a Lk ()Z
L1229:  ifne L1239
L1232:  invokestatic Method com/threerings/projectx/util/a Lp ()Z
L1235:  pop
L1236:  goto L1243
L1239:  iconst_1
L1240:  goto L1244
L1243:  iconst_0
L1244:  invokevirtual Method com/threerings/projectx/client/ef setIMEComposingEnabled (Z)V
L1247:  new com/threerings/projectx/client/ProjectXApp$c
L1250:  dup
L1251:  aload_0
L1252:  invokespecial Method com/threerings/projectx/client/ProjectXApp$c <init> (Lcom/threerings/projectx/client/ProjectXApp;)V
L1255:  invokevirtual Method com/threerings/projectx/client/ProjectXApp$c start ()V
L1258:  aload_0
L1259:  new com/threerings/projectx/client/s
L1262:  dup
L1263:  aload_0
L1264:  invokespecial Method com/threerings/projectx/client/s <init> (Lcom/threerings/projectx/util/A;)V
L1267:  putfield Field com/threerings/projectx/client/ProjectXApp ali Lcom/threerings/projectx/client/s;

        invokestatic Method sumguytho/common/ModManagerImpl get__Callback ()Lsumguytho/common/ModManagerImpl;
        dup
        dup
        aload_0
        getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/projectx/client/chat/ProjectXChatDirector;
        invokevirtual Method sumguytho/common/ModManagerImpl setChatDir__Callback (Lcom/threerings/projectx/client/chat/ProjectXChatDirector;)V
        aload_0
        invokevirtual Method sumguytho/common/ModManagerImpl setProjXCtx__Callback (Lcom/threerings/projectx/util/A;)V
        invokevirtual Method sumguytho/common/ModManagerImpl init__Callback ()V

L1270:  return
L1271:
        .linenumbertable
            L0 301
            L4 2037
            L17 2043
            L23 2127
            L30 2133
            L31 3033
            L38 2133
            L41 2163
            L48 2169
            L69 2181
            L81 2189
            L93 2210
            L109 2219
            L121 303
            L128 304
            L134 307
            L140 310
            L147 313
            L168 4000
            L460 319
            L464 320
            L467 4870
            L470 4873
            L478 4874
            L490 4875
            L493 4878
            L500 4880
            L512 4881
            L515 4882
            L518 4894
            L524 4895
            L532 4896
            L540 4897
            L546 4899
            L558 4904
            L561 4902
            L563 4903
            L580 4906
            L585 4907
            L591 4908
            L597 323
            L600 324
            L608 325
            L630 327
            L642 328
            L657 330
            L669 331
            L679 333
            L697 364
            L703 365
            L709 366
            L715 369
            L728 372
            L737 375
            L748 376
            L756 379
            L771 450
            L783 451
            L795 452
            L808 468
            L821 5458
            L827 5459
            L835 5460
            L843 5461
            L849 5463
            L855 5465
            L866 468
            L879 470
            L891 471
            L911 473
            L931 475
            L937 477
            L948 479
            L960 480
            L972 481
            L984 482
            L996 483
            L1008 484
            L1020 485
            L1034 486
            L1046 489
            L1048 5635
            L1053 490
            L1059 491
            L1075 492
            L1081 493
            L1097 495
            L1115 499
            L1123 500
            L1129 501
            L1136 502
            L1158 505
            L1168 506
            L1178 509
            L1190 510
            L1209 511
            L1222 512
            L1247 516
            L1258 519
            L1270 520
        .end linenumbertable
    .end code
.end method

.method public final vI : ()Ljava/lang/String;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akR Ljava/lang/String;
L4:     areturn
L5:
        .linenumbertable
            L0 527
        .end linenumbertable
    .end code
.end method

.method public final cn : (Ljava/lang/String;)V
    .code stack 2 locals 2
L0:     aload_0
L1:     aload_1
L2:     putfield Field com/threerings/projectx/client/ProjectXApp akR Ljava/lang/String;
L5:     return
L6:
        .linenumbertable
            L0 536
            L5 537
        .end linenumbertable
    .end code
.end method

.method public final vJ : ()Ljava/lang/String;
    .code stack 2 locals 2
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akS Ljava/lang/String;
L4:     astore_1
L5:     aload_0
L6:     aconst_null
L7:     putfield Field com/threerings/projectx/client/ProjectXApp akS Ljava/lang/String;
L10:    aload_1
L11:    areturn
L12:
        .linenumbertable
            L0 544
            L5 545
            L10 546
        .end linenumbertable
    .end code
.end method

.method public final vK : ()Ljava/lang/String;
    .code stack 2 locals 2
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akT Ljava/lang/String;
L4:     astore_1
L5:     aload_0
L6:     aconst_null
L7:     putfield Field com/threerings/projectx/client/ProjectXApp akT Ljava/lang/String;
L10:    aload_1
L11:    areturn
L12:
        .linenumbertable
            L0 555
            L5 556
            L10 557
        .end linenumbertable
    .end code
.end method

.method public final vL : ()Lcom/threerings/projectx/client/ProjectXApp$b;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akV Lcom/threerings/projectx/client/ProjectXApp$b;
L4:     areturn
L5:
        .linenumbertable
            L0 566
        .end linenumbertable
    .end code
.end method

.method public final a : (Lcom/threerings/projectx/client/ProjectXApp$a;)V
    .code stack 2 locals 2
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akW Lcom/samskivert/util/ObserverList;
L4:     aload_1
L5:     invokevirtual Method com/samskivert/util/ObserverList add (Ljava/lang/Object;)Z
L8:     pop
L9:     return
L10:
        .linenumbertable
            L0 574
            L9 575
        .end linenumbertable
    .end code
.end method

.method public final b : (Lcom/threerings/projectx/client/ProjectXApp$a;)V
    .code stack 2 locals 2
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akW Lcom/samskivert/util/ObserverList;
L4:     aload_1
L5:     invokevirtual Method com/samskivert/util/ObserverList remove (Ljava/lang/Object;)Z
L8:     pop
L9:     return
L10:
        .linenumbertable
            L0 582
            L9 583
        .end linenumbertable
    .end code
.end method

.method public final vM : ()Lcom/threerings/projectx/client/ah;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akw Lcom/threerings/projectx/client/ah;
L4:     areturn
L5:
        .linenumbertable
            L0 590
        .end linenumbertable
    .end code
.end method

.method public final vN : ()Lcom/threerings/projectx/client/ax;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akO Lcom/threerings/projectx/client/ax;
L4:     areturn
L5:
        .linenumbertable
            L0 598
        .end linenumbertable
    .end code
.end method

.method public final c : (Lcom/threerings/opengl/gui/aD;)V
    .code stack 5 locals 2
L0:     aload_0
L1:     new com/threerings/projectx/client/ui/W
L4:     dup
L5:     aload_0
L6:     aload_1
L7:     invokespecial Method com/threerings/projectx/client/ui/W <init> (Lcom/threerings/projectx/util/A;Lcom/threerings/opengl/gui/aD;)V
L10:    invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Lcom/threerings/opengl/i;)V
L13:    return
L14:
        .linenumbertable
            L0 606
            L13 607
        .end linenumbertable
    .end code
.end method

.method public final a : (Lcom/threerings/opengl/i;)V
    .code stack 3 locals 2
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akP Lcom/threerings/opengl/i;
L4:     ifnull L16
L7:     aload_0
L8:     getfield Field com/threerings/projectx/client/ProjectXApp akP Lcom/threerings/opengl/i;
L11:    invokeinterface InterfaceMethod com/threerings/opengl/i wasRemoved ()V 1
L16:    aload_0
L17:    aload_1
L18:    dup_x1
L19:    putfield Field com/threerings/projectx/client/ProjectXApp akP Lcom/threerings/opengl/i;
L22:    ifnull L34
L25:    aload_0
L26:    getfield Field com/threerings/projectx/client/ProjectXApp akP Lcom/threerings/opengl/i;
L29:    invokeinterface InterfaceMethod com/threerings/opengl/i wasAdded ()V 1
L34:    return
L35:
        .linenumbertable
            L0 614
            L7 615
            L16 617
            L25 618
            L34 620
        .end linenumbertable
    .end code
.end method

.method public final vO : ()Lcom/threerings/opengl/i;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akP Lcom/threerings/opengl/i;
L4:     areturn
L5:
        .linenumbertable
            L0 627
        .end linenumbertable
    .end code
.end method

.method public final at : (Z)V
    .code stack 2 locals 4
L0:     invokestatic Method com/threerings/projectx/util/a Lj ()Ljava/lang/String;
L3:     astore_2
L4:     aload_0
L5:     invokevirtual Method com/threerings/projectx/client/ProjectXApp ti ()Lcom/threerings/projectx/data/PlayerObject;
L8:     dup
L9:     astore_3
L10:    ifnull L24
L13:    iload_1
L14:    ifeq L24
L17:    aload_3
L18:    getfield Field com/threerings/projectx/data/PlayerObject knight Lcom/threerings/util/Name;
L21:    goto L25
L24:    aconst_null
L25:    dup
L26:    astore_1
L27:    ifnonnull L34
L30:    aload_2
L31:    goto L57
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
L57:    invokestatic Method org/lwjgl/opengl/Display setTitle (Ljava/lang/String;)V
L60:    invokestatic Method com/threerings/projectx/util/E LW ()Lcom/threerings/projectx/util/E;
L63:    aload_1
L64:    invokevirtual Method com/threerings/projectx/util/E p (Lcom/threerings/util/Name;)V
L67:    return
L68:
        .linenumbertable
            L0 645
            L4 646
            L9 647
            L26 648
            L60 649
            L67 650
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
            L0 661
            L8 662
        .end linenumbertable
    .end code
.end method

.method public final a : (Ljava/lang/String;FFZ)V
    .code stack 5 locals 5
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _soundmgr Lcom/threerings/openal/s;
L4:     invokevirtual Method com/threerings/openal/s isInitialized ()Z
L7:     ifne L11
L10:    return
L11:    aload_0
L12:    fload_3
L13:    invokevirtual Method com/threerings/projectx/client/ProjectXApp F (F)V
L16:    aload_0
L17:    aload_0
L18:    aload_1
L19:    fload_2
L20:    iload 4
L22:    invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Ljava/lang/String;FZ)Lcom/threerings/openal/m;
L25:    putfield Field com/threerings/projectx/client/ProjectXApp akX Lcom/threerings/openal/m;
L28:    aload_0
L29:    getfield Field com/threerings/projectx/client/ProjectXApp akX Lcom/threerings/openal/m;
L32:    ifnonnull L36
L35:    return
L36:    fload_3
L37:    fconst_0
L38:    fcmpl
L39:    ifle L51
L42:    aload_0
L43:    getfield Field com/threerings/projectx/client/ProjectXApp akX Lcom/threerings/openal/m;
L46:    fload_3
L47:    invokevirtual Method com/threerings/openal/m J (F)V
L50:    return
L51:    aload_0
L52:    getfield Field com/threerings/projectx/client/ProjectXApp akX Lcom/threerings/openal/m;
L55:    invokevirtual Method com/threerings/openal/m play ()V
L58:    return
L59:
        .linenumbertable
            L0 674
            L10 675
            L11 677
            L16 678
            L28 679
            L35 680
            L36 682
            L42 683
            L51 685
            L58 687
        .end linenumbertable
    .end code
.end method

.method public final a : (Ljava/lang/String;FZ)Lcom/threerings/openal/m;
    .code stack 7 locals 4
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _soundmgr Lcom/threerings/openal/s;
L4:     invokevirtual Method com/threerings/openal/s isInitialized ()Z
L7:     ifne L12
L10:    aconst_null
L11:    areturn
        .catch java/io/IOException from L12 to L27 using L28
L12:    new com/threerings/projectx/client/dZ
L15:    dup
L16:    aload_0
L17:    aload_0
L18:    getfield Field com/threerings/projectx/client/ProjectXApp _soundmgr Lcom/threerings/openal/s;
L21:    aload_1
L22:    iload_3
L23:    fload_2
L24:    invokespecial Method com/threerings/projectx/client/dZ <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/openal/s;Ljava/lang/String;ZF)V
L27:    areturn
L28:    astore_2
L29:    getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/V;
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
L51:    invokevirtual Method com/samskivert/util/V f (Ljava/lang/Object;[Ljava/lang/Object;)V
L54:    aconst_null
L55:    areturn
L56:
        .linenumbertable
            L0 696
            L10 697
            L12 700
            L28 713
            L29 714
            L54 715
        .end linenumbertable
    .end code
.end method

.method public final b : (Ljava/lang/String;FZ)Lcom/threerings/openal/D;
    .code stack 8 locals 4
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _soundmgr Lcom/threerings/openal/s;
L4:     invokevirtual Method com/threerings/openal/s isInitialized ()Z
L7:     ifne L12
L10:    aconst_null
L11:    areturn
        .catch java/io/IOException from L12 to L30 using L31
L12:    new com/threerings/projectx/client/ea
L15:    dup
L16:    aload_0
L17:    aload_0
L18:    getfield Field com/threerings/projectx/client/ProjectXApp _soundmgr Lcom/threerings/openal/s;
L21:    aload_1
L22:    iconst_1
L23:    ldc 'default'
L25:    ldc +0.5f
L27:    invokespecial Method com/threerings/projectx/client/ea <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/openal/s;Ljava/lang/String;ZLjava/lang/String;F)V
L30:    areturn
L31:    astore_2
L32:    getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/V;
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
L54:    invokevirtual Method com/samskivert/util/V f (Ljava/lang/Object;[Ljava/lang/Object;)V
L57:    aconst_null
L58:    areturn
L59:
        .linenumbertable
            L0 725
            L10 726
            L12 729
            L31 742
            L32 743
            L57 744
        .end linenumbertable
    .end code
.end method

.method public final F : (F)V
    .code stack 3 locals 2
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akX Lcom/threerings/openal/m;
L4:     ifnonnull L8
L7:     return
L8:     aload_0
L9:     getfield Field com/threerings/projectx/client/ProjectXApp akX Lcom/threerings/openal/m;
L12:    invokevirtual Method com/threerings/openal/m isPlaying ()Z
L15:    ifeq L43
L18:    fload_1
L19:    fconst_0
L20:    fcmpl
L21:    ifle L36
L24:    aload_0
L25:    getfield Field com/threerings/projectx/client/ProjectXApp akX Lcom/threerings/openal/m;
L28:    fload_1
L29:    iconst_1
L30:    invokevirtual Method com/threerings/openal/m b (FZ)V
L33:    goto L43
L36:    aload_0
L37:    getfield Field com/threerings/projectx/client/ProjectXApp akX Lcom/threerings/openal/m;
L40:    invokevirtual Method com/threerings/openal/m dispose ()V
L43:    aload_0
L44:    aconst_null
L45:    putfield Field com/threerings/projectx/client/ProjectXApp akX Lcom/threerings/openal/m;
L48:    return
L49:
        .linenumbertable
            L0 755
            L7 756
            L8 758
            L18 759
            L24 760
            L36 762
            L43 765
            L48 766
        .end linenumbertable
    .end code
.end method

.method public final vP : ()V
    .code stack 6 locals 2
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akF Lcom/threerings/projectx/social/client/n;
L4:     invokevirtual Method com/threerings/projectx/social/client/n Jq ()Lcom/threerings/projectx/client/ui/S;
L7:     dup
L8:     astore_1
L9:     ifnonnull L67
L12:    aload_0
L13:    invokevirtual Method com/threerings/projectx/client/ProjectXApp ti ()Lcom/threerings/projectx/data/PlayerObject;
L16:    getfield Field com/threerings/projectx/data/PlayerObject availableKnights [Lcom/threerings/projectx/data/AvailableKnight;
L19:    arraylength
L20:    ifne L38
L23:    aload_0
L24:    new com/threerings/projectx/client/eC
L27:    dup
L28:    aload_0
L29:    iconst_1
L30:    aconst_null
L31:    invokespecial Method com/threerings/projectx/client/eC <init> (Lcom/threerings/projectx/util/A;ZLcom/threerings/util/Name;)V
L34:    invokevirtual Method com/threerings/projectx/client/ProjectXApp c (Lcom/threerings/opengl/gui/aD;)V
L37:    return
L38:    aload_0
L39:    getfield Field com/threerings/projectx/client/ProjectXApp akV Lcom/threerings/projectx/client/ProjectXApp$b;
L42:    ifnonnull L57
L45:    new com/threerings/projectx/client/cW
L48:    dup
L49:    aload_0
L50:    invokespecial Method com/threerings/projectx/client/cW <init> (Lcom/threerings/projectx/util/A;)V
L53:    astore_1
L54:    goto L67
L57:    new com/threerings/projectx/client/eb
L60:    dup
L61:    aload_0
L62:    aload_0
L63:    invokespecial Method com/threerings/projectx/client/eb <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/projectx/util/A;)V
L66:    astore_1
L67:    aload_0
L68:    aload_1
L69:    invokevirtual Method com/threerings/projectx/client/ProjectXApp c (Lcom/threerings/opengl/gui/aD;)V
L72:    return
L73:
        .linenumbertable
            L0 782
            L8 783
            L12 784
            L23 785
            L37 786
            L38 788
            L45 789
            L57 791
            L67 798
            L72 799
        .end linenumbertable
    .end code
.end method

.method public final a : (Lcom/threerings/tudey/data/TudeySceneModel;)V
    .code stack 3 locals 2
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akY Lcom/samskivert/util/z;
L4:     aload_1
L5:     getfield Field com/threerings/tudey/data/TudeySceneModel sceneId I
L8:     aload_1
L9:     invokeinterface InterfaceMethod com/samskivert/util/z put (ILjava/lang/Object;)Ljava/lang/Object; 3
L14:    pop
L15:    return
L16:
        .linenumbertable
            L0 807
            L15 808
        .end linenumbertable
    .end code
.end method

.method public final d : (Ljava/lang/String;[I[I)V
    .code stack 5 locals 5
L0:     aload_0
L1:     iconst_1
L2:     putfield Field com/threerings/projectx/client/ProjectXApp akZ Z
L5:     new com/threerings/projectx/client/ec
L8:     dup
L9:     aload_0
L10:    invokespecial Method com/threerings/projectx/client/ec <init> (Lcom/threerings/projectx/client/ProjectXApp;)V
L13:    astore 4
L15:    aload_0
L16:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L19:    aload_1
L20:    aload_2
L21:    aload_3
L22:    aload 4
L24:    invokevirtual Method com/threerings/presents/client/Client a (Ljava/lang/String;[I[ILcom/threerings/presents/client/D$a;)V
L27:    return
L28:
        .linenumbertable
            L0 815
            L5 816
            L15 825
            L27 826
        .end linenumbertable
    .end code
.end method

.method public final vQ : ()Z
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akZ Z
L4:     ireturn
L5:
        .linenumbertable
            L0 833
        .end linenumbertable
    .end code
.end method

.method public final vR : ()V
    .code stack 1 locals 1
L0:     aload_0
L1:     invokespecial Method com/threerings/opengl/f shutdown ()V
L4:     return
L5:
        .linenumbertable
            L0 841
            L4 842
        .end linenumbertable
    .end code
.end method

.method public final co : (Ljava/lang/String;)Z
    .code stack 7 locals 4
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L4:     invokevirtual Method com/threerings/presents/client/Client isLoggedOn ()Z
L7:     ifne L31
L10:    aload_0
L11:    aload_1
L12:    invokevirtual Method com/threerings/projectx/client/ProjectXApp cq (Ljava/lang/String;)V
L15:    aload_0
L16:    new com/threerings/projectx/client/ck
L19:    dup
L20:    aload_0
L21:    aconst_null
L22:    iconst_1
L23:    invokespecial Method com/threerings/projectx/client/ck <init> (Lcom/threerings/projectx/util/A;Ljava/lang/String;Z)V
L26:    invokevirtual Method com/threerings/projectx/client/ProjectXApp c (Lcom/threerings/opengl/gui/aD;)V
L29:    iconst_0
L30:    ireturn
L31:    aload_0
L32:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L35:    invokevirtual Method com/threerings/presents/client/Client oG ()Lcom/threerings/presents/net/Credentials;
L38:    checkcast com/threerings/projectx/data/ProjectXCredentials
L41:    astore_2
L42:    aload_0
L43:    invokevirtual Method com/threerings/projectx/client/ProjectXApp ti ()Lcom/threerings/projectx/data/PlayerObject;
L46:    getfield Field com/threerings/projectx/data/PlayerObject knight Lcom/threerings/util/Name;
L49:    astore_3
L50:    aload_0
L51:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L54:    new com/threerings/projectx/client/ed
L57:    dup
L58:    aload_0
L59:    aload_1
L60:    aload_2
L61:    aload_3
L62:    invokespecial Method com/threerings/projectx/client/ed <init> (Lcom/threerings/projectx/client/ProjectXApp;Ljava/lang/String;Lcom/threerings/projectx/data/ProjectXCredentials;Lcom/threerings/util/Name;)V
L65:    invokevirtual Method com/threerings/presents/client/Client b (Lcom/threerings/presents/client/J;)V
L68:    aload_0
L69:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L72:    iconst_0
L73:    invokevirtual Method com/threerings/presents/client/Client B (Z)Z
L76:    pop
L77:    iconst_1
L78:    ireturn
L79:
        .linenumbertable
            L0 851
            L10 852
            L15 853
            L29 854
            L31 856
            L42 857
            L50 858
            L68 871
            L77 872
        .end linenumbertable
    .end code
.end method

.method public final x : (Ljava/lang/String;Ljava/lang/String;)V
    .code stack 6 locals 3
L0:     aload_1
L1:     ifnonnull L5
L4:     return
        .catch java/net/MalformedURLException from L5 to L18 using L19
L5:     aload_0
L6:     new java/net/URL
L9:     dup
L10:    aload_1
L11:    invokespecial Method java/net/URL <init> (Ljava/lang/String;)V
L14:    aload_2
L15:    invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Ljava/net/URL;Ljava/lang/String;)V
L18:    return
L19:    astore_2
L20:    getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/V;
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
L42:    invokevirtual Method com/samskivert/util/V f (Ljava/lang/Object;[Ljava/lang/Object;)V
L45:    return
L46:
        .linenumbertable
            L0 888
            L4 889
            L5 892
            L18 895
            L19 893
            L20 894
            L45 896
        .end linenumbertable
    .end code
.end method

.method public final a : (Ljava/net/URL;Ljava/lang/String;)V
    .code stack 6 locals 5
L0:     aload_1
L1:     ifnonnull L5
L4:     return
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
L31:    invokestatic Method com/samskivert/util/ak gd ()Z
L34:    ifeq L42
L37:    aload_0
L38:    iconst_0
L39:    invokevirtual Method com/threerings/projectx/client/ProjectXApp setFullscreen (Z)V
L42:    aload_1
L43:    new com/threerings/projectx/client/ee
L46:    dup
L47:    aload_0
L48:    aload_2
L49:    aload_1
L50:    invokespecial Method com/threerings/projectx/client/ee <init> (Lcom/threerings/projectx/client/ProjectXApp;Ljava/lang/String;Ljava/net/URL;)V
L53:    ldc 'xdg-open'
L55:    astore_3
L56:    astore_2
L57:    astore_1
L58:    invokestatic Method com/samskivert/util/ak gc ()Z
L61:    ifeq L197
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
L89:    if_icmpeq L142
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
L117:   ldc '"'
L119:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L122:   aload_1
L123:   invokevirtual Method java/net/URL toString ()Ljava/lang/String;
L126:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L129:   ldc '"'
L131:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L134:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L137:   aastore
L138:   astore_3
L139:   goto L239
L142:   iconst_5
L143:   anewarray java/lang/String
L146:   dup
L147:   iconst_0
L148:   ldc 'cmd.exe'
L150:   aastore
L151:   dup
L152:   iconst_1
L153:   ldc '/c'
L155:   aastore
L156:   dup
L157:   iconst_2
L158:   ldc 'start'
L160:   aastore
L161:   dup
L162:   iconst_3
L163:   ldc '""'
L165:   aastore
L166:   dup
L167:   iconst_4
L168:   new java/lang/StringBuilder
L171:   dup
L172:   ldc '"'
L174:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L177:   aload_1
L178:   invokevirtual Method java/net/URL toString ()Ljava/lang/String;
L181:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L184:   ldc '"'
L186:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L189:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L192:   aastore
L193:   astore_3
L194:   goto L239
L197:   invokestatic Method com/samskivert/util/ak gd ()Z
L200:   ifeq L223
L203:   iconst_2
L204:   anewarray java/lang/String
L207:   dup
L208:   iconst_0
L209:   ldc 'open'
L211:   aastore
L212:   dup
L213:   iconst_1
L214:   aload_1
L215:   invokevirtual Method java/net/URL toString ()Ljava/lang/String;
L218:   aastore
L219:   astore_3
L220:   goto L239
L223:   iconst_2
L224:   anewarray java/lang/String
L227:   dup
L228:   iconst_0
L229:   aload_3
L230:   aastore
L231:   dup
L232:   iconst_1
L233:   aload_1
L234:   invokevirtual Method java/net/URL toString ()Ljava/lang/String;
L237:   aastore
L238:   astore_3
L239:   aload_3
L240:   ldc ' '
L242:   invokestatic Method com/samskivert/util/ar b ([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
L245:   dup
L246:   astore 4
L248:   ldc 'password=[^&]*'
L250:   ldc 'password=XXX'
L252:   invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
L255:   astore 4
L257:   getstatic Field com/threerings/d log Lcom/samskivert/util/V;
L260:   new java/lang/StringBuilder
L263:   dup
L264:   ldc 'Browsing URL [cmd='
L266:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L269:   aload 4
L271:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L274:   ldc '].'
L276:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L279:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L282:   iconst_0
L283:   anewarray java/lang/Object
L286:   invokevirtual Method com/samskivert/util/V e (Ljava/lang/Object;[Ljava/lang/Object;)V
        .catch java/lang/Exception from L289 to L312 using L313
L289:   invokestatic Method java/lang/Runtime getRuntime ()Ljava/lang/Runtime;
L292:   aload_3
L293:   invokevirtual Method java/lang/Runtime exec ([Ljava/lang/String;)Ljava/lang/Process;
L296:   astore_3
L297:   new com/threerings/util/c
L300:   dup
L301:   aload_3
L302:   aload_1
L303:   aload_2
L304:   invokespecial Method com/threerings/util/c <init> (Ljava/lang/Process;Ljava/net/URL;Lcom/samskivert/util/ag;)V
L307:   dup
L308:   astore_3
L309:   invokevirtual Method com/threerings/util/c start ()V
L312:   return
L313:   astore_3
L314:   getstatic Field com/threerings/d log Lcom/samskivert/util/V;
L317:   new java/lang/StringBuilder
L320:   dup
L321:   ldc 'Failed to launch browser [url='
L323:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L326:   aload_1
L327:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder;
L330:   ldc ', error='
L332:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L335:   aload_3
L336:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder;
L339:   ldc '].'
L341:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L344:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L347:   iconst_0
L348:   anewarray java/lang/Object
L351:   invokevirtual Method com/samskivert/util/V f (Ljava/lang/Object;[Ljava/lang/Object;)V
L354:   aload_2
L355:   aload_3
L356:   invokeinterface InterfaceMethod com/samskivert/util/ag b (Ljava/lang/Exception;)V 2
L361:   return
L362:
        .linenumbertable
            L0 903
            L4 904
            L5 906
            L11 908
            L23 909
            L30 910
            L31 915
            L37 916
            L42 919
            L58 6060
            L64 6064
            L70 6065
            L92 6066
            L123 6067
            L142 6069
            L178 6070
            L194 6073
            L203 6074
            L223 6077
            L239 6081
            L246 6082
            L257 6083
            L289 6086
            L297 6087
            L308 6088
            L312 6093
            L313 6089
            L314 6090
            L354 6092
            L361 927
        .end linenumbertable
    .end code
.end method

.method public final vS : ()Lcom/threerings/projectx/client/s;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp ali Lcom/threerings/projectx/client/s;
L4:     areturn
L5:
        .linenumbertable
            L0 934
        .end linenumbertable
    .end code
.end method

.method public final vT : ()Z
    .code stack 4 locals 1
L0:     aload_0
L1:     getstatic Field com/samskivert/util/an Cy Ljava/lang/Runnable;
L4:     iconst_0
L5:     iconst_0
L6:     invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Ljava/lang/Runnable;ZZ)Z
L9:     ireturn
L10:
        .linenumbertable
            L0 942
        .end linenumbertable
    .end code
.end method

.method public final a : (Ljava/lang/Runnable;ZZ)Z
    .code stack 8 locals 6
L0:     aload_0
L1:     invokevirtual Method com/threerings/projectx/client/ProjectXApp ti ()Lcom/threerings/projectx/data/PlayerObject;
L4:     astore 4
L6:     aload_0
L7:     getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L10:    invokevirtual Method com/threerings/presents/client/Client isLoggedOn ()Z
L13:    ifeq L85
L16:    aload_0
L17:    getfield Field com/threerings/projectx/client/ProjectXApp ald Z
L20:    ifne L85
L23:    aload_0
L24:    getfield Field com/threerings/projectx/client/ProjectXApp ale Z
L27:    ifne L85
L30:    aload_0
L31:    getfield Field com/threerings/projectx/client/ProjectXApp alf Z
L34:    ifne L85
L37:    aload 4
L39:    dup
L40:    astore 5
L42:    getfield Field com/threerings/projectx/data/PlayerObject username Lcom/threerings/util/Name;
L45:    invokestatic Method com/threerings/projectx/data/ProjectXCredentials o (Lcom/threerings/util/Name;)Z
L48:    ifeq L85
L51:    aload 4
L53:    getfield Field com/threerings/projectx/data/PlayerObject knight Lcom/threerings/util/Name;
L56:    ifnull L85
L59:    aload_0
L60:    iconst_1
L61:    putfield Field com/threerings/projectx/client/ProjectXApp ald Z
L64:    aload_0
L65:    getfield Field com/threerings/projectx/client/ProjectXApp akN Lcom/threerings/projectx/client/ef;
L68:    new com/threerings/projectx/client/dx
L71:    dup
L72:    aload_0
L73:    aload_0
L74:    aload_1
L75:    iload_2
L76:    iload_3
L77:    invokespecial Method com/threerings/projectx/client/dx <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/projectx/util/A;Ljava/lang/Runnable;ZZ)V
L80:    invokevirtual Method com/threerings/projectx/client/ef addWindow (Lcom/threerings/opengl/gui/aD;)V
L83:    iconst_1
L84:    ireturn
L85:    aload_1
L86:    invokeinterface InterfaceMethod java/lang/Runnable run ()V 1
L91:    iconst_0
L92:    ireturn
L93:
        .linenumbertable
            L0 955
            L6 956
            L40 6837
            L48 956
            L59 958
            L64 959
            L83 965
            L85 968
            L91 969
        .end linenumbertable
    .end code
.end method

.method public final vU : ()J
    .code stack 2 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp alg J
L4:     lreturn
L5:
        .linenumbertable
            L0 978
        .end linenumbertable
    .end code
.end method

.method public final vV : ()J
    .code stack 2 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp alh J
L4:     lreturn
L5:
        .linenumbertable
            L0 986
        .end linenumbertable
    .end code
.end method

.method public final qA : ()Lcom/samskivert/util/n;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp aku Lcom/samskivert/util/n;
L4:     areturn
L5:
        .linenumbertable
            L0 992
        .end linenumbertable
    .end code
.end method

.method public final qB : ()Lcom/threerings/presents/client/Client;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L4:     areturn
L5:
        .linenumbertable
            L0 998
        .end linenumbertable
    .end code
.end method

.method public final oK : ()Lcom/threerings/presents/dobj/f;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L4:     invokevirtual Method com/threerings/presents/client/Client oK ()Lcom/threerings/presents/dobj/f;
L7:     areturn
L8:
        .linenumbertable
            L0 1004
        .end linenumbertable
    .end code
.end method

.method public final qC : ()Lcom/threerings/crowd/client/d;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akx Lcom/threerings/projectx/client/eg;
L4:     areturn
L5:
        .linenumbertable
            L0 1010
        .end linenumbertable
    .end code
.end method

.method public final qD : ()Lcom/threerings/crowd/client/o;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp aky Lcom/threerings/crowd/client/o;
L4:     areturn
L5:
        .linenumbertable
            L0 1016
        .end linenumbertable
    .end code
.end method

.method public final qE : ()Lcom/threerings/crowd/chat/client/a;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/projectx/client/chat/ProjectXChatDirector;
L4:     areturn
L5:
        .linenumbertable
            L0 1022
        .end linenumbertable
    .end code
.end method

.method public final a : (Lcom/threerings/crowd/client/A;)V
    .code stack 2 locals 2
L0:     aload_0
L1:     ldc +0.5f
L3:     invokevirtual Method com/threerings/projectx/client/ProjectXApp F (F)V
L6:     aload_0
L7:     aload_1
L8:     checkcast com/threerings/opengl/i
L11:    invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Lcom/threerings/opengl/i;)V
L14:    return
L15:
        .linenumbertable
            L0 1029
            L6 1030
            L14 1031
        .end linenumbertable
    .end code
.end method

.method public final b : (Lcom/threerings/crowd/client/A;)V
    .code stack 5 locals 2
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akP Lcom/threerings/opengl/i;
L4:     aload_1
L5:     if_acmpeq L9
L8:     return
L9:     aload_1
L10:    instanceof com/threerings/projectx/client/er
L13:    ifne L22
L16:    aload_0
L17:    aconst_null
L18:    invokevirtual Method com/threerings/projectx/client/ProjectXApp a (Lcom/threerings/opengl/i;)V
L21:    return
L22:    aload_0
L23:    getfield Field com/threerings/projectx/client/ProjectXApp akC Lcom/threerings/projectx/client/ev;
L26:    iconst_1
L27:    invokevirtual Method com/threerings/projectx/client/ev aS (Z)V
L30:    aload_1
L31:    checkcast com/threerings/projectx/client/er
L34:    new com/threerings/projectx/client/dy
L37:    dup
L38:    aload_0
L39:    aload_1
L40:    invokespecial Method com/threerings/projectx/client/dy <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/crowd/client/A;)V
L43:    invokevirtual Method com/threerings/projectx/client/er j (Ljava/lang/Runnable;)V
L46:    return
L47:
        .linenumbertable
            L0 1036
            L8 1037
            L9 1039
            L16 1040
            L21 1041
            L22 1045
            L30 1046
            L46 1054
        .end linenumbertable
    .end code
.end method

.method public final qF : ()Lcom/threerings/whirled/a/d;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akA Lcom/threerings/whirled/a/d;
L4:     areturn
L5:
        .linenumbertable
            L0 1059
        .end linenumbertable
    .end code
.end method

.method public final vW : ()Lcom/threerings/projectx/client/ef;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akN Lcom/threerings/projectx/client/ef;
L4:     areturn
L5:
        .linenumbertable
            L0 1065
        .end linenumbertable
    .end code
.end method

.method public final vX : ()Lcom/threerings/projectx/client/ProjectXApp;
    .code stack 1 locals 1
L0:     aload_0
L1:     areturn
L2:
        .linenumbertable
            L0 1071
        .end linenumbertable
    .end code
.end method

.method public final vY : ()Lcom/threerings/crowd/chat/client/k;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akB Lcom/threerings/crowd/chat/client/k;
L4:     areturn
L5:
        .linenumbertable
            L0 1077
        .end linenumbertable
    .end code
.end method

.method public final vZ : ()Lcom/threerings/projectx/client/ev;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akC Lcom/threerings/projectx/client/ev;
L4:     areturn
L5:
        .linenumbertable
            L0 1083
        .end linenumbertable
    .end code
.end method

.method public final wa : ()Lcom/threerings/projectx/client/fo;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akD Lcom/threerings/projectx/client/fo;
L4:     areturn
L5:
        .linenumbertable
            L0 1089
        .end linenumbertable
    .end code
.end method

.method public final wb : ()Lcom/threerings/projectx/client/fo;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akE Lcom/threerings/projectx/client/fo;
L4:     areturn
L5:
        .linenumbertable
            L0 1095
        .end linenumbertable
    .end code
.end method

.method public final wc : ()Lcom/threerings/projectx/social/client/n;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akF Lcom/threerings/projectx/social/client/n;
L4:     areturn
L5:
        .linenumbertable
            L0 1101
        .end linenumbertable
    .end code
.end method

.method public final wd : ()Lcom/threerings/projectx/admin/client/b;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akG Lcom/threerings/projectx/admin/client/b;
L4:     areturn
L5:
        .linenumbertable
            L0 1107
        .end linenumbertable
    .end code
.end method

.method public final we : ()Lcom/threerings/projectx/guild/client/L;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akH Lcom/threerings/projectx/guild/client/L;
L4:     areturn
L5:
        .linenumbertable
            L0 1113
        .end linenumbertable
    .end code
.end method

.method public final wf : ()Lcom/threerings/projectx/guild/client/az;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akI Lcom/threerings/projectx/guild/client/az;
L4:     areturn
L5:
        .linenumbertable
            L0 1119
        .end linenumbertable
    .end code
.end method

.method public final wg : ()Lcom/threerings/projectx/dungeon/client/R;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akJ Lcom/threerings/projectx/dungeon/client/R;
L4:     areturn
L5:
        .linenumbertable
            L0 1125
        .end linenumbertable
    .end code
.end method

.method public final wh : ()Lcom/threerings/projectx/client/dj;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akK Lcom/threerings/projectx/client/dj;
L4:     areturn
L5:
        .linenumbertable
            L0 1131
        .end linenumbertable
    .end code
.end method

.method public final wi : ()Lcom/threerings/projectx/partner/client/SteamDirector;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akL Lcom/threerings/projectx/partner/client/SteamDirector;
L4:     areturn
L5:
        .linenumbertable
            L0 1137
        .end linenumbertable
    .end code
.end method

.method public final ti : ()Lcom/threerings/projectx/data/PlayerObject;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L4:     invokevirtual Method com/threerings/presents/client/Client oL ()Lcom/threerings/presents/data/ClientObject;
L7:     checkcast com/threerings/projectx/data/PlayerObject
L10:    areturn
L11:
        .linenumbertable
            L0 1143
        .end linenumbertable
    .end code
.end method

.method public final wj : ()Lcom/threerings/projectx/data/ServerObject;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akU Lcom/threerings/projectx/data/ServerObject;
L4:     areturn
L5:
        .linenumbertable
            L0 1149
        .end linenumbertable
    .end code
.end method

.method public final wk : ()J
    .code stack 3 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L4:     invokestatic Method com/samskivert/util/ak currentTimeMillis ()J
L7:     invokevirtual Method com/threerings/presents/client/Client C (J)J
L10:    lreturn
L11:
        .linenumbertable
            L0 1155
        .end linenumbertable
    .end code
.end method

.method public final bv : (Ljava/lang/String;)Ljava/lang/String;
    .code stack 3 locals 2
L0:     aload_0
L1:     ldc 'global'
L3:     aload_1
L4:     invokevirtual Method com/threerings/projectx/client/ProjectXApp xlate (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
L7:     areturn
L8:
        .linenumbertable
            L0 1161
        .end linenumbertable
    .end code
.end method

.method public xlate : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .code stack 2 locals 3
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _msgmgr Lcom/threerings/util/M;
L4:     aload_1
L5:     invokevirtual Method com/threerings/util/M dD (Ljava/lang/String;)Lcom/threerings/util/L;
L8:     aload_2
L9:     invokevirtual Method com/threerings/util/L bv (Ljava/lang/String;)Ljava/lang/String;
L12:    areturn
L13:
        .linenumbertable
            L0 1167
        .end linenumbertable
    .end code
.end method

.method public final wl : ()Lcom/google/common/eventbus/g;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp alm Lcom/google/common/eventbus/g;
L4:     areturn
L5:
        .linenumbertable
            L0 1173
        .end linenumbertable
    .end code
.end method

.method public final b : (Lcom/threerings/projectx/data/DialogInfo;)V
    .code stack 2 locals 2
L0:     aload_0
L1:     invokevirtual Method com/threerings/projectx/client/ProjectXApp ti ()Lcom/threerings/projectx/data/PlayerObject;
L4:     aload_1
L5:     putfield Field com/threerings/projectx/data/PlayerObject sceneDialog Lcom/threerings/projectx/data/DialogInfo;
L8:     aload_0
L9:     getfield Field com/threerings/projectx/client/ProjectXApp akP Lcom/threerings/opengl/i;
L12:    checkcast com/threerings/projectx/client/er
L15:    invokevirtual Method com/threerings/projectx/client/er MA ()Lcom/threerings/tudey/a/a;
L18:    checkcast com/threerings/projectx/client/el
L21:    invokevirtual Method com/threerings/projectx/client/el xy ()V
L24:    return
L25:
        .linenumbertable
            L0 1179
            L8 1180
            L24 1181
        .end linenumbertable
    .end code
.end method

.method public final bT : (I)V
    .code stack 2 locals 2
L0:     aload_0
L1:     iload_1
L2:     putfield Field com/threerings/projectx/client/ProjectXApp akv I
L5:     return
L6:
        .linenumbertable
            L0 1188
            L5 1189
        .end linenumbertable
    .end code
.end method

.method public shouldCheckTimestamps : ()Z
    .code stack 1 locals 1
L0:     getstatic Field com/threerings/projectx/client/ProjectXApp als Lcom/samskivert/swing/RuntimeAdjust$b;
L3:     invokevirtual Method com/samskivert/swing/RuntimeAdjust$b getValue ()Z
L6:     ireturn
L7:
        .linenumbertable
            L0 1194
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
            L0 1200
            L15 1213
        .end linenumbertable
    .end code
.end method

.method protected init : ()V
    .code stack 8 locals 4
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akL Lcom/threerings/projectx/partner/client/SteamDirector;
L4:     invokevirtual Method com/threerings/projectx/partner/client/SteamDirector init ()Z
L7:     ifeq L103
L10:    invokestatic Method com/samskivert/util/ak gd ()Z
L13:    ifne L31
L16:    aload_0
L17:    new com/threerings/projectx/client/dC
L20:    dup
L21:    aload_0
L22:    invokespecial Method com/threerings/projectx/client/dC <init> (Lcom/threerings/projectx/client/ProjectXApp;)V
L25:    putfield Field com/threerings/projectx/client/ProjectXApp alq Ljava/lang/Runnable;
L28:    goto L43
L31:    getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/V;
L34:    ldc "Not invalidating array states because I still don't think the Steam overlay is working..."
L36:    iconst_0
L37:    anewarray java/lang/Object
L40:    invokevirtual Method com/samskivert/util/V f (Ljava/lang/Object;[Ljava/lang/Object;)V
L43:    aload_0
L44:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L47:    invokevirtual Method com/threerings/presents/client/Client oG ()Lcom/threerings/presents/net/Credentials;
L50:    checkcast com/threerings/projectx/data/ProjectXCredentials
L53:    astore_1
L54:    aload_0
L55:    getfield Field com/threerings/projectx/client/ProjectXApp akL Lcom/threerings/projectx/partner/client/SteamDirector;
L58:    invokevirtual Method com/threerings/projectx/partner/client/SteamDirector In ()Z
L61:    ifeq L84
L64:    aload_0
L65:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L68:    new com/threerings/projectx/data/ProjectXCredentials
L71:    dup
L72:    invokestatic Method com/threerings/froth/SteamUser getSteamID ()J
L75:    invokespecial Method com/threerings/projectx/data/ProjectXCredentials <init> (J)V
L78:    invokevirtual Method com/threerings/presents/client/Client a (Lcom/threerings/presents/net/Credentials;)V
L81:    goto L103
L84:    aload_1
L85:    ifnull L103
L88:    aload_1
L89:    invokevirtual Method com/threerings/projectx/data/ProjectXCredentials isAnonymous ()Z
L92:    ifeq L103
L95:    aload_0
L96:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L99:    aconst_null
L100:   invokevirtual Method com/threerings/presents/client/Client a (Lcom/threerings/presents/net/Credentials;)V
L103:   invokestatic Method com/threerings/projectx/client/a/g install ()V
L106:   aload_0
L107:   invokespecial Method com/threerings/opengl/f init ()V
L110:   aload_0
L111:   new com/threerings/projectx/client/ax
L114:   dup
L115:   aload_0
L116:   invokespecial Method com/threerings/projectx/client/ax <init> (Lcom/threerings/projectx/util/A;)V
L119:   putfield Field com/threerings/projectx/client/ProjectXApp akO Lcom/threerings/projectx/client/ax;
L122:   invokestatic Method org/lwjgl/opengl/Display isCreated ()Z
L125:   ifeq L150
L128:   aload_0
L129:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs wy ()Lcom/threerings/projectx/client/ProjectXPrefs$RenderQuality;
L132:   invokevirtual Method com/threerings/projectx/client/ProjectXPrefs$RenderQuality getScheme ()Ljava/lang/String;
L135:   invokevirtual Method com/threerings/projectx/client/ProjectXApp setRenderScheme (Ljava/lang/String;)V
L138:   aload_0
L139:   invokestatic Method com/threerings/projectx/client/ProjectXPrefs wz ()I
L142:   istore_2
L143:   dup
L144:   astore_1
L145:   iload_2
L146:   putfield Field com/threerings/projectx/client/ProjectXApp akv I
L149:   return
L150:   new javax/swing/JFrame
L153:   dup
L154:   invokestatic Method com/threerings/projectx/util/a Lj ()Ljava/lang/String;
L157:   invokespecial Method javax/swing/JFrame <init> (Ljava/lang/String;)V
L160:   dup
L161:   astore_1
L162:   iconst_3
L163:   invokevirtual Method javax/swing/JFrame setDefaultCloseOperation (I)V
L166:   aload_0
L167:   getfield Field com/threerings/projectx/client/ProjectXApp _msgmgr Lcom/threerings/util/M;
L170:   ldc 'projectx'
L172:   invokevirtual Method com/threerings/util/M dD (Ljava/lang/String;)Lcom/threerings/util/L;
L175:   astore_2
L176:   new javax/swing/JEditorPane
L179:   dup
L180:   ldc 'text/html'
L182:   aload_2
L183:   ldc 'm.display_failure'
L185:   invokevirtual Method com/threerings/util/L get (Ljava/lang/String;)Ljava/lang/String;
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
L268:   invokevirtual Method com/threerings/util/L get (Ljava/lang/String;)Ljava/lang/String;
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
            L0 1219
            L10 1220
            L16 1221
            L31 1229
            L43 1233
            L54 1234
            L64 1235
            L84 1236
            L95 1237
            L103 1241
            L106 1243
            L110 1245
            L122 1247
            L128 1250
            L138 1251
            L144 7188
            L149 1253
            L150 1257
            L161 1258
            L166 1259
            L176 1260
            L192 1261
            L197 1262
            L202 1263
            L221 1264
            L233 1271
            L240 1272
            L248 1273
            L255 1274
            L281 1279
            L291 1280
            L295 1281
            L300 1282
        .end linenumbertable
    .end code
.end method

.method protected initSharedManagers : ()V
    .code stack 1 locals 1
L0:     invokestatic Method com/threerings/projectx/util/a Lk ()Z
L3:     invokestatic Method com/threerings/config/ManagedConfig setStoreComments (Z)V
L6:     aload_0
L7:     invokespecial Method com/threerings/opengl/f initSharedManagers ()V
L10:    return
L11:
        .linenumbertable
            L0 1287
            L6 1288
            L10 1289
        .end linenumbertable
    .end code
.end method

.method protected getAntialiasingLevel : ()I
    .code stack 1 locals 1
L0:     invokestatic Method com/threerings/projectx/client/ProjectXPrefs getAntialiasingLevel ()I
L3:     ireturn
L4:
        .linenumbertable
            L0 1294
        .end linenumbertable
    .end code
.end method

.method protected didInit : ()V
    .code stack 4 locals 2
L0:     aload_0
L1:     invokespecial Method com/threerings/opengl/f didInit ()V
L4:     aload_0
L5:     invokestatic Method com/threerings/projectx/client/ProjectXPrefs m (Lcom/threerings/projectx/util/A;)V
L8:     invokestatic Method com/threerings/projectx/client/ProjectXPrefs$d xq ()Lcom/threerings/projectx/client/ProjectXPrefs$d;
L11:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs a (Lcom/threerings/projectx/client/ProjectXPrefs$d;)V
L14:    invokestatic Method org/lwjgl/opengl/GLContext getCapabilities ()Lorg/lwjgl/opengl/ContextCapabilities;
L17:    getfield Field org/lwjgl/opengl/ContextCapabilities GL_ARB_multisample Z
L20:    ifeq L35
L23:    iconst_1
L24:    ldc 32937
L26:    invokestatic Method org/lwjgl/opengl/GL11 glGetInteger (I)I
L29:    invokestatic Method java/lang/Math max (II)I
L32:    goto L36
L35:    iconst_1
L36:    istore_1
L37:    bipush 31
L39:    iload_1
L40:    invokestatic Method java/lang/Integer numberOfLeadingZeros (I)I
L43:    isub
L44:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs bX (I)V
L47:    aload_0
L48:    getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/projectx/client/chat/ProjectXChatDirector;
L51:    invokevirtual Method com/threerings/projectx/client/chat/ProjectXChatDirector init ()V
L54:    aload_0
L55:    getfield Field com/threerings/projectx/client/ProjectXApp akL Lcom/threerings/projectx/partner/client/SteamDirector;
L58:    invokevirtual Method com/threerings/projectx/partner/client/SteamDirector sV ()V
L61:    aload_0
L62:    iconst_1
L63:    invokespecial Method com/threerings/projectx/client/ProjectXApp au (Z)V
L66:    aload_0
L67:    getfield Field com/threerings/projectx/client/ProjectXApp alk Z
L70:    ifeq L90
L73:    aload_0
L74:    invokevirtual Method com/threerings/projectx/client/ProjectXApp getRunQueue ()Lcom/samskivert/util/al;
L77:    new com/threerings/projectx/client/dE
L80:    dup
L81:    aload_0
L82:    invokespecial Method com/threerings/projectx/client/dE <init> (Lcom/threerings/projectx/client/ProjectXApp;)V
L85:    invokeinterface InterfaceMethod com/samskivert/util/al b (Ljava/lang/Runnable;)V 2
L90:    return
L91:
        .linenumbertable
            L0 1311
            L4 1313
            L8 1317
            L14 1318
            L37 1320
            L47 1323
            L54 1324
            L61 1327
            L66 1329
            L73 1331
            L90 1338
        .end linenumbertable
    .end code
.end method

.method protected willShutdown : ()V
    .code stack 2 locals 2
L0:     aload_0
L1:     invokespecial Method com/threerings/opengl/f willShutdown ()V
L4:     aload_0
L5:     getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L8:     invokevirtual Method com/threerings/presents/client/Client isLoggedOn ()Z
L11:    ifeq L23
L14:    aload_0
L15:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L18:    iconst_0
L19:    invokevirtual Method com/threerings/presents/client/Client B (Z)Z
L22:    pop
L23:    aload_0
L24:    getfield Field com/threerings/projectx/client/ProjectXApp akL Lcom/threerings/projectx/partner/client/SteamDirector;
L27:    astore_1
L28:    invokestatic Method com/threerings/froth/SteamAPI isInitialized ()Z
L31:    ifeq L45
L34:    aload_1
L35:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs b (Lcom/threerings/projectx/client/ProjectXPrefs$a;)V
L38:    invokestatic Method com/threerings/froth/SteamController shutdown ()Z
L41:    pop
L42:    invokestatic Method com/threerings/froth/SteamAPI shutdown ()V
L45:    aload_0
L46:    getfield Field com/threerings/projectx/client/ProjectXApp ali Lcom/threerings/projectx/client/s;
L49:    invokevirtual Method com/threerings/projectx/client/s shutdown ()V
L52:    aload_0
L53:    getfield Field com/threerings/projectx/client/ProjectXApp akQ Lcom/threerings/projectx/client/hud/n;
L56:    ifnull L66
L59:    aload_0
L60:    getfield Field com/threerings/projectx/client/ProjectXApp akQ Lcom/threerings/projectx/client/hud/n;
L63:    invokevirtual Method com/threerings/projectx/client/hud/n shutdown ()V
L66:    return
L67:
        .linenumbertable
            L0 1343
            L4 1346
            L14 1347
            L23 1351
            L28 7382
            L34 7383
            L38 7384
            L42 7385
            L45 1354
            L52 1356
            L59 1357
            L66 1359
        .end linenumbertable
    .end code
.end method

.method protected updateView : (F)V
    .code stack 5 locals 4
L0:     invokestatic Method java/lang/System nanoTime ()J
L3:     lstore_2
L4:     aload_0
L5:     getfield Field com/threerings/projectx/client/ProjectXApp akL Lcom/threerings/projectx/partner/client/SteamDirector;
L8:     invokevirtual Method com/threerings/projectx/partner/client/SteamDirector update ()V
L11:    aload_0
L12:    getfield Field com/threerings/projectx/client/ProjectXApp akN Lcom/threerings/projectx/client/ef;
L15:    invokevirtual Method com/threerings/projectx/client/ef poll ()V
L18:    aload_0
L19:    getfield Field com/threerings/projectx/client/ProjectXApp akP Lcom/threerings/opengl/i;
L22:    ifnull L35
L25:    aload_0
L26:    getfield Field com/threerings/projectx/client/ProjectXApp akP Lcom/threerings/opengl/i;
L29:    fload_1
L30:    invokeinterface InterfaceMethod com/threerings/opengl/i tick (F)V 2
L35:    aload_0
L36:    getfield Field com/threerings/projectx/client/ProjectXApp akN Lcom/threerings/projectx/client/ef;
L39:    fload_1
L40:    invokevirtual Method com/threerings/projectx/client/ef tick (F)V
L43:    aload_0
L44:    fload_1
L45:    invokespecial Method com/threerings/opengl/f updateView (F)V
L48:    aload_0
L49:    invokestatic Method java/lang/System nanoTime ()J
L52:    lload_2
L53:    lsub
L54:    putfield Field com/threerings/projectx/client/ProjectXApp alg J
L57:    return
L58:
        .linenumbertable
            L0 1364
            L4 1366
            L11 1369
            L18 1370
            L25 1371
            L35 1373
            L43 1376
            L48 1377
            L57 1378
        .end linenumbertable
    .end code
.end method

.method protected renderView : ()V
    .code stack 5 locals 3
L0:     invokestatic Method java/lang/System nanoTime ()J
L3:     lstore_1
L4:     aload_0
L5:     invokespecial Method com/threerings/opengl/f renderView ()V
L8:     aload_0
L9:     invokestatic Method java/lang/System nanoTime ()J
L12:    lload_1
L13:    lsub
L14:    putfield Field com/threerings/projectx/client/ProjectXApp alh J
L17:    return
L18:
        .linenumbertable
            L0 1383
            L4 1384
            L8 1385
            L17 1386
        .end linenumbertable
    .end code
.end method

.method protected compositeView : ()V
    .code stack 1 locals 1
L0:     aload_0
L1:     invokespecial Method com/threerings/opengl/f compositeView ()V
L4:     aload_0
L5:     getfield Field com/threerings/projectx/client/ProjectXApp akP Lcom/threerings/opengl/i;
L8:     ifnull L20
L11:    aload_0
L12:    getfield Field com/threerings/projectx/client/ProjectXApp akP Lcom/threerings/opengl/i;
L15:    invokeinterface InterfaceMethod com/threerings/opengl/i composite ()V 1
L20:    getstatic Field com/threerings/projectx/client/ProjectXApp alr Lcom/samskivert/swing/RuntimeAdjust$b;
L23:    invokevirtual Method com/samskivert/swing/RuntimeAdjust$b getValue ()Z
L26:    ifeq L39
L29:    aload_0
L30:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L33:    invokevirtual Method com/threerings/presents/client/Client isLoggedOn ()Z
L36:    ifne L46
L39:    aload_0
L40:    getfield Field com/threerings/projectx/client/ProjectXApp akN Lcom/threerings/projectx/client/ef;
L43:    invokevirtual Method com/threerings/projectx/client/ef composite ()V
L46:    return
L47:
        .linenumbertable
            L0 1391
            L4 1392
            L11 1393
            L20 1395
            L39 1396
            L46 1398
        .end linenumbertable
    .end code
.end method

.method protected attemptCreateDisplay : ()Z
    .code stack 1 locals 1
L0:     iconst_1
L1:     invokestatic Method org/lwjgl/opengl/Display setResizable (Z)V
L4:     aload_0
L5:     invokespecial Method com/threerings/opengl/f attemptCreateDisplay ()Z
L8:     ireturn
L9:
        .linenumbertable
            L0 1403
            L4 1404
        .end linenumbertable
    .end code
.end method

.method public final wm : ()V
    .code stack 5 locals 1
L0:     aload_0
L1:     invokestatic Method java/lang/System currentTimeMillis ()J
L4:     ldc2_w 2000L
L7:     ladd
L8:     putfield Field com/threerings/projectx/client/ProjectXApp alb J
L11:    return
L12:
        .linenumbertable
            L0 1414
            L11 1415
        .end linenumbertable
    .end code
.end method

.method protected updateFrame : ()V
    .code stack 4 locals 2
L0:     invokestatic Method org/lwjgl/opengl/Display wasResized ()Z
L3:     ifeq L120
L6:     invokestatic Method java/lang/System currentTimeMillis ()J
L9:     aload_0
L10:    getfield Field com/threerings/projectx/client/ProjectXApp alb J
L13:    lcmp
L14:    ifle L120
L17:    aload_0
L18:    getfield Field com/threerings/projectx/client/ProjectXApp alp Lcom/samskivert/util/D;
L21:    ldc2_w 800L
L24:    invokevirtual Method com/samskivert/util/D schedule (J)V
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
L67:    iconst_1
L68:    goto L72
L71:    iconst_0
L72:    dup
L73:    istore_1
L74:    aload_0
L75:    getfield Field com/threerings/projectx/client/ProjectXApp akQ Lcom/threerings/projectx/client/hud/n;
L78:    ifnonnull L85
L81:    iconst_1
L82:    goto L86
L85:    iconst_0
L86:    if_icmpne L120
L89:    iload_1
L90:    ifeq L108
L93:    aload_0
L94:    new com/threerings/projectx/client/hud/n
L97:    dup
L98:    aload_0
L99:    invokespecial Method com/threerings/projectx/client/hud/n <init> (Lcom/threerings/projectx/util/A;)V
L102:   putfield Field com/threerings/projectx/client/ProjectXApp akQ Lcom/threerings/projectx/client/hud/n;
L105:   goto L120
L108:   aload_0
L109:   getfield Field com/threerings/projectx/client/ProjectXApp akQ Lcom/threerings/projectx/client/hud/n;
L112:   invokevirtual Method com/threerings/projectx/client/hud/n shutdown ()V
L115:   aload_0
L116:   aconst_null
L117:   putfield Field com/threerings/projectx/client/ProjectXApp akQ Lcom/threerings/projectx/client/hud/n;
L120:   aload_0
L121:   invokespecial Method com/threerings/opengl/f updateFrame ()V
L124:   aload_0
L125:   getfield Field com/threerings/projectx/client/ProjectXApp akv I
L128:   invokestatic Method org/lwjgl/opengl/Display sync (I)V
L131:   aload_0
L132:   getfield Field com/threerings/projectx/client/ProjectXApp alq Ljava/lang/Runnable;
L135:   invokeinterface InterfaceMethod java/lang/Runnable run ()V 1
L140:   return
L141:
        .linenumbertable
            L0 1420
            L17 1422
            L27 1424
            L32 1425
            L47 1428
            L73 1430
            L89 1431
            L93 1432
            L108 1435
            L115 1436
            L120 1441
            L124 1442
            L131 1444
            L140 1445
        .end linenumbertable
    .end code
.end method

.method protected calcRendererSize : ()Ljava/awt/Dimension;
    .code stack 1 locals 1
L0:     aload_0
L1:     invokespecial Method com/threerings/opengl/f calcRendererSize ()Ljava/awt/Dimension;
L4:     invokestatic Method com/threerings/projectx/client/ProjectXPrefs$d a (Ljava/awt/Dimension;)Ljava/awt/Dimension;
L7:     areturn
L8:
        .linenumbertable
            L0 1450
        .end linenumbertable
    .end code
.end method

.method protected final wn : ()V
    .code stack 6 locals 7
L0:     aload_0
L1:     iconst_1
L2:     putfield Field com/threerings/projectx/client/ProjectXApp alc Z
L5:     aload_0
L6:     getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L9:     invokevirtual Method com/threerings/presents/client/Client oO ()Lcom/threerings/presents/net/BootstrapData;
L12:    checkcast com/threerings/projectx/data/ProjectXBootstrapData
L15:    getfield Field com/threerings/projectx/data/ProjectXBootstrapData serverOid I
L18:    istore_1
L19:    aload_0
L20:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L23:    invokevirtual Method com/threerings/presents/client/Client oK ()Lcom/threerings/presents/dobj/f;
L26:    iload_1
L27:    new com/threerings/projectx/client/dG
L30:    dup
L31:    aload_0
L32:    invokespecial Method com/threerings/projectx/client/dG <init> (Lcom/threerings/projectx/client/ProjectXApp;)V
L35:    invokeinterface InterfaceMethod com/threerings/presents/dobj/f a (ILcom/threerings/presents/dobj/s;)V 3
L40:    aload_0
L41:    invokevirtual Method com/threerings/projectx/client/ProjectXApp ti ()Lcom/threerings/projectx/data/PlayerObject;
L44:    dup
L45:    astore_1
L46:    aload_0
L47:    getfield Field com/threerings/projectx/client/ProjectXApp alo Lcom/threerings/presents/dobj/k;
L50:    invokevirtual Method com/threerings/projectx/data/PlayerObject a (Lcom/threerings/presents/dobj/d;)V
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
L80:    aload_0
L81:    getfield Field com/threerings/projectx/client/ProjectXApp akZ Z
L84:    ifeq L88
L87:    return
L88:    aload_0
L89:    new com/threerings/crowd/chat/client/k
L92:    dup
L93:    aload_0
L94:    aload_1
L95:    getfield Field com/threerings/projectx/data/PlayerObject username Lcom/threerings/util/Name;
L98:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs j (Lcom/threerings/util/Name;)[Lcom/threerings/util/Name;
L101:   invokespecial Method com/threerings/crowd/chat/client/k <init> (Lcom/threerings/presents/b/b;[Lcom/threerings/util/Name;)V
L104:   putfield Field com/threerings/projectx/client/ProjectXApp akB Lcom/threerings/crowd/chat/client/k;
L107:   aload_0
L108:   getfield Field com/threerings/projectx/client/ProjectXApp akB Lcom/threerings/crowd/chat/client/k;
L111:   aload_0
L112:   getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/projectx/client/chat/ProjectXChatDirector;
L115:   invokevirtual Method com/threerings/crowd/chat/client/k a (Lcom/threerings/crowd/chat/client/a;)V
L118:   aload_0
L119:   getfield Field com/threerings/projectx/client/ProjectXApp akB Lcom/threerings/crowd/chat/client/k;
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
L138:   invokevirtual Method com/threerings/projectx/client/ProjectXApp at (Z)V
L141:   aload_0
L142:   astore_3
L143:   ldc 'appdir'
L145:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String;
L148:   dup
L149:   astore 4
L151:   ifnull L246
L154:   ldc 'full.dat'
L156:   invokestatic Method com/threerings/projectx/client/ProjectXApp cm (Ljava/lang/String;)Ljava/io/File;
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
L179:   getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/V;
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
L203:   invokevirtual Method com/samskivert/util/V f (Ljava/lang/Object;[Ljava/lang/Object;)V
L206:   aload_3
L207:   new com/threerings/projectx/client/ProjectXApp$b
L210:   dup
L211:   invokespecial Method com/threerings/projectx/client/ProjectXApp$b <init> ()V
L214:   putfield Field com/threerings/projectx/client/ProjectXApp akV Lcom/threerings/projectx/client/ProjectXApp$b;
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
L254:   new com/threerings/projectx/client/cj
L257:   dup
L258:   aload_0
L259:   invokespecial Method com/threerings/projectx/client/cj <init> (Lcom/threerings/projectx/util/A;)V
L262:   invokevirtual Method com/threerings/projectx/client/ProjectXApp c (Lcom/threerings/opengl/gui/aD;)V
L265:   return
L266:   aload_2
L267:   ifnull L274
L270:   aload_0
L271:   invokevirtual Method com/threerings/projectx/client/ProjectXApp vP ()V
L274:   return
L275:
        .linenumbertable
            L0 1516
            L5 1519
            L19 1520
            L40 1535
            L45 1536
            L53 1537
            L58 1538
            L62 1540
            L80 1546
            L87 1547
            L88 1551
            L107 1559
            L118 1560
            L134 1567
            L136 7635
            L141 1571
            L143 7657
            L149 7658
            L154 7661
            L160 7662
            L168 7666
            L174 7669
            L177 7667
            L179 7668
            L206 7670
            L217 7672
            L225 7673
            L246 1575
            L253 1576
            L266 1578
            L270 1579
            L274 1597
        .end linenumbertable
    .end code
.end method

.method protected final wo : ()Lcom/threerings/tudey/data/TudeySceneModel;
    .code stack 2 locals 2
L0:     aload_0
L1:     ldc 'world/readyroom/scene.dat'
L3:     invokespecial Method com/threerings/projectx/client/ProjectXApp cp (Ljava/lang/String;)Lcom/threerings/tudey/data/TudeySceneModel;
L6:     dup
L7:     astore_1
L8:     ldc ''
L10:    invokestatic Method com/threerings/util/L d (Ljava/lang/Object;)Ljava/lang/String;
L13:    putfield Field com/threerings/tudey/data/TudeySceneModel name Ljava/lang/String;
L16:    aload_1
L17:    getstatic Field com/threerings/projectx/data/ReadyRoomSceneConfig avG Lcom/threerings/projectx/data/ReadyRoomSceneConfig;
L20:    invokevirtual Method com/threerings/tudey/data/TudeySceneModel a (Lcom/threerings/tudey/data/TudeySceneConfig;)V
L23:    aload_1
L24:    areturn
L25:
        .linenumbertable
            L0 1602
            L7 1603
            L16 1604
            L23 1605
        .end linenumbertable
    .end code
.end method

.method public final wp : ()Lcom/threerings/tudey/data/TudeySceneModel;
    .code stack 6 locals 2
        .catch java/io/IOException from L0 to L6 using L7
L0:     aload_0
L1:     ldc 'world/createknight/scene.dat'
L3:     invokespecial Method com/threerings/projectx/client/ProjectXApp cp (Ljava/lang/String;)Lcom/threerings/tudey/data/TudeySceneModel;
L6:     areturn
L7:     astore_1
L8:     getstatic Field com/threerings/projectx/a log Lcom/samskivert/util/V;
L11:    ldc 'Could not load'
L13:    iconst_1
L14:    anewarray java/lang/Object
L17:    dup
L18:    iconst_0
L19:    aload_1
L20:    aastore
L21:    invokevirtual Method com/samskivert/util/V f (Ljava/lang/Object;[Ljava/lang/Object;)V
L24:    aconst_null
L25:    areturn
L26:
        .linenumbertable
            L0 1611
            L7 1612
            L8 1613
            L24 1614
        .end linenumbertable
    .end code
.end method

.method private cp : (Ljava/lang/String;)Lcom/threerings/tudey/data/TudeySceneModel;
    .code stack 2 locals 2
L0:     aload_0
L1:     invokevirtual Method com/threerings/projectx/client/ProjectXApp getResourceManager ()Lcom/threerings/b/f;
L4:     aload_1
L5:     invokevirtual Method com/threerings/b/f do (Ljava/lang/String;)Ljava/io/File;
L8:     ldc Class com/threerings/tudey/data/TudeySceneModel
L10:    invokestatic Method com/google/common/base/Functions a (Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;
L13:    checkcast com/threerings/tudey/data/TudeySceneModel
L16:    areturn
L17:
        .linenumbertable
            L0 1621
        .end linenumbertable
    .end code
.end method

.method protected final a : (Ljava/lang/String;IJZZ)V
    .code stack 4 locals 7
L0:     aload_1
L1:     ifnull L12
L4:     aload_0
L5:     getfield Field com/threerings/projectx/client/ProjectXApp akV Lcom/threerings/projectx/client/ProjectXApp$b;
L8:     aload_1
L9:     putfield Field com/threerings/projectx/client/ProjectXApp$b message Ljava/lang/String;
L12:    iload_2
L13:    iflt L32
L16:    aload_0
L17:    getfield Field com/threerings/projectx/client/ProjectXApp akV Lcom/threerings/projectx/client/ProjectXApp$b;
L20:    iload_2
L21:    putfield Field com/threerings/projectx/client/ProjectXApp$b alI I
L24:    aload_0
L25:    getfield Field com/threerings/projectx/client/ProjectXApp akV Lcom/threerings/projectx/client/ProjectXApp$b;
L28:    lload_3
L29:    putfield Field com/threerings/projectx/client/ProjectXApp$b alJ J
L32:    aload_0
L33:    getfield Field com/threerings/projectx/client/ProjectXApp akV Lcom/threerings/projectx/client/ProjectXApp$b;
L36:    dup
L37:    getfield Field com/threerings/projectx/client/ProjectXApp$b alK Z
L40:    iload 5
L42:    ior
L43:    putfield Field com/threerings/projectx/client/ProjectXApp$b alK Z
L46:    aload_0
L47:    getfield Field com/threerings/projectx/client/ProjectXApp akV Lcom/threerings/projectx/client/ProjectXApp$b;
L50:    iload 6
L52:    putfield Field com/threerings/projectx/client/ProjectXApp$b alL Z
L55:    aload_0
L56:    getfield Field com/threerings/projectx/client/ProjectXApp akW Lcom/samskivert/util/ObserverList;
L59:    new com/threerings/projectx/client/dO
L62:    dup
L63:    aload_0
L64:    invokespecial Method com/threerings/projectx/client/dO <init> (Lcom/threerings/projectx/client/ProjectXApp;)V
L67:    invokevirtual Method com/samskivert/util/ObserverList a (Lcom/samskivert/util/ObserverList$b;)V
L70:    return
L71:
        .linenumbertable
            L0 1716
            L4 1717
            L12 1719
            L16 1720
            L24 1721
            L32 1723
            L46 1724
            L55 1727
            L70 1733
        .end linenumbertable
    .end code
.end method

.method protected final wq : ()V
    .code stack 4 locals 1
L0:     aload_0
L1:     aconst_null
L2:     putfield Field com/threerings/projectx/client/ProjectXApp akV Lcom/threerings/projectx/client/ProjectXApp$b;
L5:     aload_0
L6:     getfield Field com/threerings/projectx/client/ProjectXApp akW Lcom/samskivert/util/ObserverList;
L9:     new com/threerings/projectx/client/dP
L12:    dup
L13:    aload_0
L14:    invokespecial Method com/threerings/projectx/client/dP <init> (Lcom/threerings/projectx/client/ProjectXApp;)V
L17:    invokevirtual Method com/samskivert/util/ObserverList a (Lcom/samskivert/util/ObserverList$b;)V
L20:    return
L21:
        .linenumbertable
            L0 1740
            L5 1743
            L20 1749
        .end linenumbertable
    .end code
.end method

.method protected final wr : ()V
    .code stack 2 locals 2
L0:     aload_0
L1:     invokevirtual Method com/threerings/projectx/client/ProjectXApp ti ()Lcom/threerings/projectx/data/PlayerObject;
L4:     dup
L5:     astore_1
L6:     ifnull L17
L9:     aload_1
L10:    aload_0
L11:    getfield Field com/threerings/projectx/client/ProjectXApp alo Lcom/threerings/presents/dobj/k;
L14:    invokevirtual Method com/threerings/projectx/data/PlayerObject b (Lcom/threerings/presents/dobj/d;)V
L17:    aload_0
L18:    getfield Field com/threerings/projectx/client/ProjectXApp akZ Z
L21:    ifeq L25
L24:    return
L25:    aload_0
L26:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L29:    aconst_null
L30:    invokevirtual Method com/threerings/presents/client/Client a (Lcom/threerings/presents/net/Credentials;)V
L33:    aload_0
L34:    aconst_null
L35:    putfield Field com/threerings/projectx/client/ProjectXApp akR Ljava/lang/String;
L38:    aload_0
L39:    getfield Field com/threerings/projectx/client/ProjectXApp akB Lcom/threerings/crowd/chat/client/k;
L42:    ifnull L57
L45:    aload_0
L46:    getfield Field com/threerings/projectx/client/ProjectXApp akB Lcom/threerings/crowd/chat/client/k;
L49:    invokevirtual Method com/threerings/crowd/chat/client/k shutdown ()V
L52:    aload_0
L53:    aconst_null
L54:    putfield Field com/threerings/projectx/client/ProjectXApp akB Lcom/threerings/crowd/chat/client/k;
L57:    aload_0
L58:    iconst_0
L59:    invokevirtual Method com/threerings/projectx/client/ProjectXApp at (Z)V
L62:    aload_0
L63:    iconst_0
L64:    invokespecial Method com/threerings/projectx/client/ProjectXApp au (Z)V
L67:    return
L68:
        .linenumbertable
            L0 1756
            L5 1758
            L9 1759
            L17 1762
            L24 1763
            L25 1767
            L33 1768
            L38 1769
            L45 1770
            L52 1771
            L57 1773
            L62 1774
            L67 1775
        .end linenumbertable
    .end code
.end method

.method private au : (Z)V
    .code stack 6 locals 2
L0:     ldc 'armor'
L2:     invokestatic Method java/lang/Boolean getBoolean (Ljava/lang/String;)Z
L5:     ifeq L24
L8:     invokestatic Method com/threerings/crowd/chat/client/k hR ()Z
L11:    ifeq L24
L14:    aload_0
L15:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L18:    invokestatic Method com/threerings/crowd/chat/client/k hS ()Lcom/threerings/projectx/data/ProjectXCredentials;
L21:    invokevirtual Method com/threerings/presents/client/Client a (Lcom/threerings/presents/net/Credentials;)V
L24:    ldc 'newgrounds'
L26:    invokestatic Method java/lang/Boolean getBoolean (Ljava/lang/String;)Z
L29:    ifeq L48
L32:    invokestatic Method com/threerings/projectx/partner/client/a Im ()Z
L35:    ifeq L48
L38:    aload_0
L39:    getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L42:    invokestatic Method com/threerings/projectx/partner/client/a hS ()Lcom/threerings/projectx/data/ProjectXCredentials;
L45:    invokevirtual Method com/threerings/presents/client/Client a (Lcom/threerings/presents/net/Credentials;)V
L48:    aload_0
L49:    ldc 'sound/music/title.ogg'
L51:    ldc +0.44999998807907104f
L53:    ldc +0.5f
L55:    invokevirtual Method com/threerings/projectx/client/ProjectXApp c (Ljava/lang/String;FF)V
L58:    aload_0
L59:    new com/threerings/projectx/client/ck
L62:    dup
L63:    aload_0
L64:    aload_0
L65:    getfield Field com/threerings/projectx/client/ProjectXApp ala Ljava/lang/String;
L68:    iload_1
L69:    invokespecial Method com/threerings/projectx/client/ck <init> (Lcom/threerings/projectx/util/A;Ljava/lang/String;Z)V
L72:    invokevirtual Method com/threerings/projectx/client/ProjectXApp c (Lcom/threerings/opengl/gui/aD;)V
L75:    aload_0
L76:    aconst_null
L77:    putfield Field com/threerings/projectx/client/ProjectXApp ala Ljava/lang/String;
L80:    return
L81:
        .linenumbertable
            L0 8021
            L5 1783
            L14 1784
            L24 9021
            L29 1786
            L38 1787
            L48 1790
            L58 1791
            L75 1792
            L80 1793
        .end linenumbertable
    .end code
.end method

.method protected final h : (Ljava/lang/Runnable;)V
    .code stack 9 locals 5
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp Vc Lcom/threerings/presents/client/Client;
L4:     invokevirtual Method com/threerings/presents/client/Client isLoggedOn ()Z
L7:     ifeq L183
L10:    aload_0
L11:    getfield Field com/threerings/projectx/client/ProjectXApp ald Z
L14:    ifne L183
L17:    aload_0
L18:    getfield Field com/threerings/projectx/client/ProjectXApp ale Z
L21:    ifne L183
L24:    aload_0
L25:    getfield Field com/threerings/projectx/client/ProjectXApp alf Z
L28:    ifne L183
L31:    getstatic Field com/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt OFFER_END_SURVEY Lcom/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt;
L34:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs a (Lcom/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt;)Z
L37:    ifeq L183
L40:    aload_0
L41:    getfield Field com/threerings/projectx/client/ProjectXApp akU Lcom/threerings/projectx/data/ServerObject;
L44:    ifnull L183
L47:    aload_0
L48:    getfield Field com/threerings/projectx/client/ProjectXApp akU Lcom/threerings/projectx/data/ServerObject;
L51:    getfield Field com/threerings/projectx/data/ServerObject endSurveyProbability F
L54:    invokestatic Method com/samskivert/util/ad l (F)Z
L57:    ifeq L183
L60:    aload_0
L61:    iconst_1
L62:    putfield Field com/threerings/projectx/client/ProjectXApp ale Z
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
L89:    getfield Field com/threerings/projectx/client/ProjectXApp _msgmgr Lcom/threerings/util/M;
L92:    ldc 'uplink'
L94:    invokevirtual Method com/threerings/util/M dD (Ljava/lang/String;)Lcom/threerings/util/L;
L97:    astore 4
L99:    aload_3
L100:   aload 4
L102:   ldc 'm.end_survey_prompt'
L104:   invokevirtual Method com/threerings/util/L get (Ljava/lang/String;)Ljava/lang/String;
L107:   putfield Field com/threerings/projectx/admin/data/Survey$Rating prompt Ljava/lang/String;
L110:   aload_3
L111:   aload 4
L113:   ldc 'm.end_survey_min'
L115:   invokevirtual Method com/threerings/util/L get (Ljava/lang/String;)Ljava/lang/String;
L118:   putfield Field com/threerings/projectx/admin/data/Survey$Rating minLabel Ljava/lang/String;
L121:   aload_3
L122:   aload 4
L124:   ldc 'm.end_survey_max'
L126:   invokevirtual Method com/threerings/util/L get (Ljava/lang/String;)Ljava/lang/String;
L129:   putfield Field com/threerings/projectx/admin/data/Survey$Rating maxLabel Ljava/lang/String;
L132:   aload_2
L133:   iconst_1
L134:   anewarray com/threerings/projectx/admin/data/Survey$Question
L137:   dup
L138:   iconst_0
L139:   aload_3
L140:   aastore
L141:   putfield Field com/threerings/projectx/admin/data/Survey questions [Lcom/threerings/projectx/admin/data/Survey$Question;
L144:   new com/threerings/opengl/gui/j
L147:   dup
L148:   aload_0
L149:   aload_0
L150:   ldc 'projectx'
L152:   ldc 'm.no_ask'
L154:   invokevirtual Method com/threerings/projectx/client/ProjectXApp xlate (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
L157:   invokespecial Method com/threerings/opengl/gui/j <init> (Lcom/threerings/openal/a/a;Ljava/lang/String;)V
L160:   astore_3
L161:   aload_0
L162:   getfield Field com/threerings/projectx/client/ProjectXApp akN Lcom/threerings/projectx/client/ef;
L165:   new com/threerings/projectx/client/dQ
L168:   dup
L169:   aload_0
L170:   aload_0
L171:   aload_2
L172:   iconst_0
L173:   aload_3
L174:   aload_1
L175:   invokespecial Method com/threerings/projectx/client/dQ <init> (Lcom/threerings/projectx/client/ProjectXApp;Lcom/threerings/projectx/util/A;Lcom/threerings/projectx/admin/data/Survey;ZLcom/threerings/opengl/gui/j;Ljava/lang/Runnable;)V
L178:   iconst_1
L179:   invokevirtual Method com/threerings/projectx/client/ef addWindow (Lcom/threerings/opengl/gui/aD;Z)V
L182:   return
L183:   aload_1
L184:   invokeinterface InterfaceMethod java/lang/Runnable run ()V 1
L189:   return
L190:
        .linenumbertable
            L0 1800
            L60 1803
            L65 1804
            L73 1805
            L81 1806
            L88 1807
            L99 1808
            L110 1809
            L121 1810
            L132 1811
            L144 1812
            L161 1813
            L182 1826
            L183 1827
            L189 1829
        .end linenumbertable
    .end code
.end method

.method protected final i : (Ljava/lang/Runnable;)V
    .code stack 10 locals 3
L0:     getstatic Field com/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt OFFER_SHORTCUT Lcom/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt;
L3:     getfield Field com/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt visible Z
L6:     ifeq L38
L9:     getstatic Field com/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt OFFER_SHORTCUT Lcom/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt;
L12:    invokestatic Method com/threerings/projectx/client/ProjectXPrefs a (Lcom/threerings/projectx/client/ProjectXPrefs$ConfirmPrompt;)Z
L15:    ifeq L38
L18:    aload_0
L19:    getfield Field com/threerings/projectx/client/ProjectXApp alc Z
L22:    ifeq L38
L25:    aload_0
L26:    getfield Field com/threerings/projectx/client/ProjectXApp alf Z
L29:    ifne L38
L32:    invokestatic Method com/threerings/projectx/client/a/i zL ()Z
L35:    ifne L45
L38:    aload_1
L39:    invokeinterface InterfaceMethod java/lang/Runnable run ()V 1
L44:    return
L45:    aload_0
L46:    iconst_1
L47:    putfield Field com/threerings/projectx/client/ProjectXApp alf Z
L50:    ldc 'm.shortcut_offer'
L52:    invokestatic Method com/threerings/projectx/util/a Lj ()Ljava/lang/String;
L55:    invokestatic Method com/threerings/util/L m (Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
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
            L0 1836
            L38 1839
            L44 1840
            L45 1842
            L50 1843
            L59 1844
            L82 1862
        .end linenumbertable
    .end code
.end method

.method protected final cq : (Ljava/lang/String;)V
    .code stack 2 locals 2
L0:     aload_1
L1:     invokestatic Method com/threerings/projectx/client/ProjectXPrefs ct (Ljava/lang/String;)V
L4:     aload_0
L5:     aload_1
L6:     invokespecial Method com/threerings/projectx/client/ProjectXApp cr (Ljava/lang/String;)V
L9:     aload_0
L10:    getfield Field com/threerings/projectx/client/ProjectXApp _imgcache Lcom/threerings/opengl/util/f;
L13:    invokevirtual Method com/threerings/opengl/util/f clear ()V
L16:    aload_0
L17:    getfield Field com/threerings/projectx/client/ProjectXApp _cfgmgr Lcom/threerings/config/ConfigManager;
L20:    ldc Class com/threerings/opengl/gui/config/UserInterfaceConfig
L22:    invokevirtual Method com/threerings/config/ConfigManager ak (Ljava/lang/Class;)V
L25:    aload_0
L26:    getfield Field com/threerings/projectx/client/ProjectXApp _cfgmgr Lcom/threerings/config/ConfigManager;
L29:    ldc Class com/threerings/opengl/gui/config/StyleConfig
L31:    invokevirtual Method com/threerings/config/ConfigManager ak (Ljava/lang/Class;)V
L34:    aload_0
L35:    getfield Field com/threerings/projectx/client/ProjectXApp akz Lcom/threerings/projectx/client/chat/ProjectXChatDirector;
L38:    invokevirtual Method com/threerings/projectx/client/chat/ProjectXChatDirector yg ()V
L41:    return
L42:
        .linenumbertable
            L0 1917
            L4 1918
            L9 1919
            L16 1920
            L25 1921
            L34 1922
            L41 1923
        .end linenumbertable
    .end code
.end method

.method private cr : (Ljava/lang/String;)V
    .code stack 5 locals 2
L0:     aload_1
L1:     putstatic Field com/threerings/projectx/client/ProjectXApp _language Ljava/lang/String;
L4:     aload_0
L5:     getfield Field com/threerings/projectx/client/ProjectXApp _rsrcmgr Lcom/threerings/b/f;
L8:     new com/threerings/projectx/client/dS
L11:    dup
L12:    aload_0
L13:    aload_1
L14:    invokespecial Method com/threerings/projectx/client/dS <init> (Lcom/threerings/projectx/client/ProjectXApp;Ljava/lang/String;)V
L17:    invokevirtual Method com/threerings/b/f a (Lcom/threerings/b/f$a;)V
L20:    aload_0
L21:    getfield Field com/threerings/projectx/client/ProjectXApp _msgmgr Lcom/threerings/util/M;
L24:    new java/util/Locale
L27:    dup
L28:    aload_1
L29:    invokespecial Method java/util/Locale <init> (Ljava/lang/String;)V
L32:    iconst_1
L33:    invokevirtual Method com/threerings/util/M a (Ljava/util/Locale;Z)V
L36:    return
L37:
        .linenumbertable
            L0 1930
            L4 1931
            L20 1940
            L36 1941
        .end linenumbertable
    .end code
.end method

.method protected final ws : ()V
    .code stack 5 locals 4
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp akU Lcom/threerings/projectx/data/ServerObject;
L4:     getfield Field com/threerings/projectx/data/ServerObject scopeVariables Ljava/util/Set;
L7:     invokestatic Method com/google/common/collect/ImmutableSet copyOf (Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
L10:    astore_1
L11:    aload_0
L12:    getfield Field com/threerings/projectx/client/ProjectXApp alj Ljava/util/Set;
L15:    aload_1
L16:    invokestatic Method com/google/common/collect/Sets difference (Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
L19:    invokevirtual Method com/google/common/collect/Sets$SetView iterator ()Ljava/util/Iterator;
L22:    astore_2
L23:    aload_2
L24:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1
L29:    ifeq L73
L32:    aload_2
L33:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1
L38:    checkcast java/lang/String
L41:    astore_3
L42:    aload_0
L43:    new java/lang/StringBuilder
L46:    dup
L47:    ldc '__server__'
L49:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L52:    aload_3
L53:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L56:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L59:    new com/threerings/expr/ai
L62:    dup
L63:    iconst_0
L64:    invokespecial Method com/threerings/expr/ai <init> (Z)V
L67:    invokevirtual Method com/threerings/projectx/client/ProjectXApp put (Ljava/lang/String;Ljava/lang/Object;)V
L70:    goto L23
L73:    aload_0
L74:    aload_1
L75:    putfield Field com/threerings/projectx/client/ProjectXApp alj Ljava/util/Set;
L78:    aload_0
L79:    getfield Field com/threerings/projectx/client/ProjectXApp alj Ljava/util/Set;
L82:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1
L87:    astore_2
L88:    aload_2
L89:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1
L94:    ifeq L138
L97:    aload_2
L98:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1
L103:   checkcast java/lang/String
L106:   astore_3
L107:   aload_0
L108:   new java/lang/StringBuilder
L111:   dup
L112:   ldc '__server__'
L114:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L117:   aload_3
L118:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L121:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L124:   new com/threerings/expr/ai
L127:   dup
L128:   iconst_1
L129:   invokespecial Method com/threerings/expr/ai <init> (Z)V
L132:   invokevirtual Method com/threerings/projectx/client/ProjectXApp put (Ljava/lang/String;Ljava/lang/Object;)V
L135:   goto L88
L138:   return
L139:
        .linenumbertable
            L0 1948
            L11 1949
            L42 1950
            L73 1952
            L78 1953
            L107 1954
            L138 1956
        .end linenumbertable
    .end code
.end method

.method protected final wt : ()V
    .code stack 2 locals 1
L0:     invokestatic Method com/threerings/projectx/util/E LW ()Lcom/threerings/projectx/util/E;
L3:     aload_0
L4:     getfield Field com/threerings/projectx/client/ProjectXApp akU Lcom/threerings/projectx/data/ServerObject;
L7:     getfield Field com/threerings/projectx/data/ServerObject spamwords [Ljava/lang/String;
L10:    invokevirtual Method com/threerings/projectx/util/E e ([Ljava/lang/String;)V
L13:    return
L14:
        .linenumbertable
            L0 1963
            L13 1964
        .end linenumbertable
    .end code
.end method

.method public bridge synthetic getApp : ()Lcom/threerings/opengl/a;
    .code stack 2 locals 2
L0:     aload_0
L1:     dup
L2:     astore_1
L3:     areturn
L4:
        .linenumbertable
            L0 187
            L2 9071
            L3 187
        .end linenumbertable
    .end code
.end method

.method public final bridge synthetic getRoot : ()Lcom/threerings/opengl/gui/M;
    .code stack 2 locals 2
L0:     aload_0
L1:     dup
L2:     astore_1
L3:     getfield Field com/threerings/projectx/client/ProjectXApp akN Lcom/threerings/projectx/client/ef;
L6:     areturn
L7:
        .linenumbertable
            L0 187
            L2 10065
            L6 187
        .end linenumbertable
    .end code
.end method

.method static synthetic a : (Lcom/threerings/projectx/client/ProjectXApp;)Lcom/threerings/expr/aj;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _streamGain Lcom/threerings/expr/aj;
L4:     areturn
L5:
        .linenumbertable
            L0 187
        .end linenumbertable
    .end code
.end method

.method static synthetic b : (Lcom/threerings/projectx/client/ProjectXApp;)Lcom/threerings/expr/aj;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _streamGain Lcom/threerings/expr/aj;
L4:     areturn
L5:
        .linenumbertable
            L0 187
        .end linenumbertable
    .end code
.end method

.method static synthetic c : (Lcom/threerings/projectx/client/ProjectXApp;)Lcom/threerings/expr/aj;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _streamGain Lcom/threerings/expr/aj;
L4:     areturn
L5:
        .linenumbertable
            L0 187
        .end linenumbertable
    .end code
.end method

.method static synthetic d : (Lcom/threerings/projectx/client/ProjectXApp;)Lcom/threerings/expr/aj;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/threerings/projectx/client/ProjectXApp _streamGain Lcom/threerings/expr/aj;
L4:     areturn
L5:
        .linenumbertable
            L0 187
        .end linenumbertable
    .end code
.end method

.method static synthetic e : (Lcom/threerings/projectx/client/ProjectXApp;)V
    .code stack 1 locals 1
L0:     aload_0
L1:     invokespecial Method com/threerings/opengl/f shutdown ()V
L4:     return
L5:
        .linenumbertable
            L0 187
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
            L0 187
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
            L0 187
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
            L0 187
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
            L0 187
        .end linenumbertable
    .end code
.end method

.method static <clinit> : ()V
    .code stack 6 locals 0
L0:     new com/samskivert/swing/RuntimeAdjust$b
L3:     dup
L4:     ldc 'Whether or not to hide the UI.'
L6:     ldc 'projectx.client.hide_ui'
L8:     getstatic Field com/threerings/projectx/client/ProjectXPrefs alO Lcom/samskivert/util/Y;
L11:    iconst_0
L12:    invokespecial Method com/samskivert/swing/RuntimeAdjust$b <init> (Ljava/lang/String;Ljava/lang/String;Lcom/samskivert/util/Y;Z)V
L15:    putstatic Field com/threerings/projectx/client/ProjectXApp alr Lcom/samskivert/swing/RuntimeAdjust$b;
L18:    new com/samskivert/swing/RuntimeAdjust$b
L21:    dup
L22:    ldc "Enables 'Refresh Files' command (requires restart)."
L24:    ldc 'projectx.client.check_timestamps'
L26:    getstatic Field com/threerings/projectx/client/ProjectXPrefs alO Lcom/samskivert/util/Y;
L29:    iconst_0
L30:    invokespecial Method com/samskivert/swing/RuntimeAdjust$b <init> (Ljava/lang/String;Ljava/lang/String;Lcom/samskivert/util/Y;Z)V
L33:    putstatic Field com/threerings/projectx/client/ProjectXApp als Lcom/samskivert/swing/RuntimeAdjust$b;
L36:    return
L37:
        .linenumbertable
            L0 2229
            L18 2233
        .end linenumbertable
    .end code
.end method
.innerclasses
    com/threerings/projectx/client/ProjectXApp$c com/threerings/projectx/client/ProjectXApp c public
    com/threerings/projectx/client/ProjectXApp$a com/threerings/projectx/client/ProjectXApp a public static interface abstract
    com/threerings/projectx/client/ProjectXApp$b com/threerings/projectx/client/ProjectXApp b public static
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
    com/threerings/projectx/client/ee [0] [0]
    com/threerings/projectx/client/ed [0] [0]
    com/threerings/projectx/client/ec [0] [0]
    com/threerings/projectx/client/eb [0] [0]
    com/threerings/projectx/client/ea [0] [0]
    com/threerings/projectx/client/dZ [0] [0]
    com/threerings/projectx/client/dV [0] [0]
    com/threerings/projectx/client/dI [0] [0]
    com/threerings/projectx/client/du [0] [0]
    com/samskivert/swing/RuntimeAdjust$b com/samskivert/swing/RuntimeAdjust b public static
    com/threerings/presents/client/D$a com/threerings/presents/client/D a public static interface abstract
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
