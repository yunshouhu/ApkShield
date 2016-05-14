.class public Lcom/apk/shield/ShieldApplication;
.super Landroid/app/Application;
.source "ShieldApplication.java"


# instance fields
.field private field:Ljava/lang/reflect/Field;

.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mDexPath:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 27
    const-string v0, "/mnt/sdcard/ex07.apk"

    iput-object v0, p0, Lcom/apk/shield/ShieldApplication;->mDexPath:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 18
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-super/range {p0 .. p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/apk/shield/ShieldApplication;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 64
    .local v3, "dir":Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/ex07.apk"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "path":Ljava/lang/String;
    const-string v13, "ex07.apk"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Lcom/apk/shield/ShieldApplication;->copyAssetsToPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/apk/shield/ShieldApplication;->mDexPath:Ljava/lang/String;

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/apk/shield/ShieldApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 71
    .local v2, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "mPackageInfo"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 72
    .local v6, "loadedApkField":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 74
    .local v9, "mPackageInfo":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "mClassLoader"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/apk/shield/ShieldApplication;->field:Ljava/lang/reflect/Field;

    .line 75
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/apk/shield/ShieldApplication;->field:Ljava/lang/reflect/Field;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 77
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/apk/shield/ShieldApplication;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v13, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 79
    .local v8, "mClassLoader":Ljava/lang/Object;
    new-instance v7, Lcom/apk/shield/ShieldClassLoader;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/apk/shield/ShieldApplication;->mDexPath:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/apk/shield/ShieldApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    check-cast v8, Ldalvik/system/PathClassLoader;

    .end local v8    # "mClassLoader":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v7, v13, v0, v14, v8}, Lcom/apk/shield/ShieldClassLoader;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ldalvik/system/PathClassLoader;)V

    .line 81
    .local v7, "loader":Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/apk/shield/ShieldApplication;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v13, v9, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    const-class v13, Landroid/content/res/AssetManager;

    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    .line 85
    .local v1, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "addAssetPath"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/apk/shield/ShieldApplication;->mDexPath:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v13, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 87
    .local v12, "rs":Landroid/content/res/Resources;
    new-instance v11, Landroid/content/res/Resources;

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-direct {v11, v1, v13, v14}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 88
    .local v11, "res":Landroid/content/res/Resources;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "mResources"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 89
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 90
    invoke-virtual {v5, v9, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "loadedApkField":Ljava/lang/reflect/Field;
    .end local v7    # "loader":Ljava/lang/ClassLoader;
    .end local v9    # "mPackageInfo":Ljava/lang/Object;
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "rs":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public copyAssetsToPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v5, "out":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 56
    .end local v5    # "out":Ljava/io/File;
    :goto_0
    return-void

    .line 40
    .restart local v5    # "out":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/apk/shield/ShieldApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 41
    .local v2, "fis":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 42
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 43
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 44
    .local v4, "len":I
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-nez v4, :cond_1

    .line 48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 49
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v0    # "buffer":[B
    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "len":I
    .end local v5    # "out":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "len":I
    .restart local v5    # "out":Ljava/io/File;
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 2

    .prologue
    .line 121
    const-string v0, "MM"

    const-string v1, "getAssets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 129
    const-string v0, "MM"

    const-string v1, "getAssets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
