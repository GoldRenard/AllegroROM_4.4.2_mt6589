.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/PublicKeyUtil;
.super Ljava/lang/Object;
.source "PublicKeyUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getPublickKey(Ljava/io/File;)Ljava/lang/String;
    .locals 21
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 34
    const/4 v10, 0x0

    .line 35
    .local v10, "input":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 37
    .local v16, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v17, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .local v17, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 39
    .local v7, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v18

    if-nez v18, :cond_2

    .line 77
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 78
    aput-object v10, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 80
    if-eqz v17, :cond_8

    .line 81
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v16, v17

    .line 88
    .end local v7    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    :goto_1
    const/4 v12, 0x0

    :goto_2
    return-object v12

    .line 40
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_3
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 41
    .local v8, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 42
    .local v13, "name":Ljava/lang/String;
    const-string v18, "META-INF"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 43
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x4

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 44
    const-string v18, ".RSA"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, ".DSA"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 45
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    .line 46
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    .local v14, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {v10, v14}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 48
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    .local v11, "inputs":Ljava/io/ByteArrayInputStream;
    :try_start_4
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const-string v18, "X.509"

    invoke-static/range {v18 .. v18}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 53
    .local v5, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v5, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v3

    .line 54
    .local v3, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 55
    .local v9, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 56
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    .line 57
    .local v4, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    .line 58
    .local v15, "publicKey":Ljava/security/PublicKey;
    const/4 v12, 0x0

    .line 59
    .local v12, "keyStr":Ljava/lang/String;
    instance-of v0, v15, Ljava/security/interfaces/RSAPublicKey;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 60
    move-object v0, v15

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v12

    .line 63
    :cond_4
    instance-of v0, v15, Ljava/security/interfaces/DSAPublicKey;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 64
    check-cast v15, Ljava/security/interfaces/DSAPublicKey;

    .end local v15    # "publicKey":Ljava/security/PublicKey;
    invoke-interface {v15}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v12

    .line 77
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 78
    aput-object v10, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 80
    if-eqz v17, :cond_6

    .line 81
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_6
    :goto_3
    move-object/from16 v16, v17

    .line 66
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    goto/16 :goto_2

    .line 83
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v6

    .line 84
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 69
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    .end local v5    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/security/cert/Certificate;>;"
    .end local v12    # "keyStr":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 70
    .local v6, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 75
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v11    # "inputs":Ljava/io/ByteArrayInputStream;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v6

    move-object/from16 v16, v17

    .line 76
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .local v6, "e":Ljava/io/IOException;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_4
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 77
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 78
    aput-object v10, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 80
    if-eqz v16, :cond_1

    .line 81
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 83
    :catch_3
    move-exception v6

    .line 84
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 77
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_5
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 78
    aput-object v10, v19, v20

    invoke-static/range {v19 .. v19}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 80
    if-eqz v16, :cond_7

    .line 81
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 86
    :cond_7
    :goto_6
    throw v18

    .line 83
    :catch_4
    move-exception v6

    .line 84
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 83
    .end local v6    # "e":Ljava/io/IOException;
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v6

    .line 84
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    :cond_8
    move-object/from16 v16, v17

    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    goto/16 :goto_1

    .line 77
    .end local v7    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_5

    .line 75
    :catch_6
    move-exception v6

    goto :goto_4
.end method

.method public static getPublickKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/PublicKeyUtil;->getPublickKey(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
