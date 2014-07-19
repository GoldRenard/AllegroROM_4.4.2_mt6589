.class public abstract Lorg/jets3t/service/security/ProviderCredentials;
.super Ljava/lang/Object;
.source "ProviderCredentials.java"


# static fields
.field protected static final CREDENTIALS_STORAGE_VERSION:I = 0x3

.field protected static final V2_KEYS_DELIMITER:Ljava/lang/String; = "AWSKEYS"

.field protected static final V3_KEYS_DELIMITER:Ljava/lang/String; = "\n"

.field protected static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field protected accessKey:Ljava/lang/String;

.field protected friendlyName:Ljava/lang/String;

.field protected secretKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/jets3t/service/security/ProviderCredentials;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/security/ProviderCredentials;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accessKey"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lorg/jets3t/service/security/ProviderCredentials;->accessKey:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lorg/jets3t/service/security/ProviderCredentials;->secretKey:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/jets3t/service/security/ProviderCredentials;->friendlyName:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lorg/jets3t/service/security/ProviderCredentials;->accessKey:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lorg/jets3t/service/security/ProviderCredentials;->secretKey:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accessKey"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .param p3, "friendlyName"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/security/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-object p3, p0, Lorg/jets3t/service/security/ProviderCredentials;->friendlyName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static load(Ljava/lang/String;Ljava/io/BufferedInputStream;)Lorg/jets3t/service/security/ProviderCredentials;
    .locals 24
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 330
    if-nez p0, :cond_4

    const/16 v17, 0x1

    .line 331
    .local v17, "partialReadOnly":Z
    :goto_0
    if-eqz v17, :cond_5

    .line 332
    sget-object v1, Lorg/jets3t/service/security/ProviderCredentials;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    sget-object v1, Lorg/jets3t/service/security/ProviderCredentials;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Loading partial information about credentials from input stream"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 342
    :cond_0
    :goto_1
    const/4 v12, 0x0

    .line 343
    .local v12, "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    const/16 v1, 0x800

    :try_start_0
    new-array v11, v1, [B

    .line 344
    .local v11, "encryptedKeys":[B
    const/4 v10, 0x0

    .line 346
    .local v10, "encryptedDataIndex":I
    const/16 v21, 0x0

    .line 347
    .local v21, "version":Ljava/lang/String;
    const/16 v22, 0x0

    .line 348
    .local v22, "versionNum":I
    const-string v7, ""

    .line 349
    .local v7, "algorithm":Ljava/lang/String;
    const-string v6, ""

    .line 350
    .local v6, "friendlyName":Ljava/lang/String;
    const/16 v20, 0x0

    .line 353
    .local v20, "usingDevPay":Z
    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lorg/jets3t/service/utils/ServiceUtils;->readInputStreamLineToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 356
    const-string v1, ":"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 357
    .local v15, "firstColonOffset":I
    add-int/lit8 v1, v15, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 358
    .local v23, "versionString":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 360
    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lorg/jets3t/service/utils/ServiceUtils;->readInputStreamLineToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 361
    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lorg/jets3t/service/utils/ServiceUtils;->readInputStreamLineToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 363
    if-nez v17, :cond_1

    .line 364
    new-instance v13, Lorg/jets3t/service/security/EncryptionUtil;

    const-string v1, "2"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7, v1}, Lorg/jets3t/service/security/EncryptionUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v12    # "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    .local v13, "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    move-object v12, v13

    .line 367
    .end local v13    # "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    .restart local v12    # "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    :cond_1
    const/4 v1, 0x3

    move/from16 v0, v22

    if-gt v1, v0, :cond_2

    .line 368
    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lorg/jets3t/service/utils/ServiceUtils;->readInputStreamLineToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 369
    .local v9, "credentialsType":Ljava/lang/String;
    const-string v1, "devpay"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 373
    .end local v9    # "credentialsType":Ljava/lang/String;
    :cond_2
    if-eqz v17, :cond_7

    .line 374
    if-eqz v20, :cond_6

    .line 375
    new-instance v1, Lorg/jets3t/service/security/AWSDevPayCredentials;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v6}, Lorg/jets3t/service/security/AWSDevPayCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    if-eqz p1, :cond_3

    .line 408
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 410
    :cond_3
    :goto_2
    return-object v1

    .line 330
    .end local v6    # "friendlyName":Ljava/lang/String;
    .end local v7    # "algorithm":Ljava/lang/String;
    .end local v10    # "encryptedDataIndex":I
    .end local v11    # "encryptedKeys":[B
    .end local v12    # "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    .end local v15    # "firstColonOffset":I
    .end local v17    # "partialReadOnly":Z
    .end local v20    # "usingDevPay":Z
    .end local v21    # "version":Ljava/lang/String;
    .end local v22    # "versionNum":I
    .end local v23    # "versionString":Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 336
    .restart local v17    # "partialReadOnly":Z
    :cond_5
    sget-object v1, Lorg/jets3t/service/security/ProviderCredentials;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    sget-object v1, Lorg/jets3t/service/security/ProviderCredentials;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Loading credentials from input stream"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 377
    .restart local v6    # "friendlyName":Ljava/lang/String;
    .restart local v7    # "algorithm":Ljava/lang/String;
    .restart local v10    # "encryptedDataIndex":I
    .restart local v11    # "encryptedKeys":[B
    .restart local v12    # "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    .restart local v15    # "firstColonOffset":I
    .restart local v20    # "usingDevPay":Z
    .restart local v21    # "version":Ljava/lang/String;
    .restart local v22    # "versionNum":I
    .restart local v23    # "versionString":Ljava/lang/String;
    :cond_6
    :try_start_2
    new-instance v1, Lorg/jets3t/service/security/AWSCredentials;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v6}, Lorg/jets3t/service/security/AWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    if-eqz p1, :cond_3

    .line 408
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 409
    :catch_0
    move-exception v2

    goto :goto_2

    .line 382
    :cond_7
    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .line 385
    const/4 v1, 0x0

    invoke-virtual {v12, v11, v1, v10}, Lorg/jets3t/service/security/EncryptionUtil;->decryptString([BII)Ljava/lang/String;

    move-result-object v16

    .line 387
    .local v16, "keys":Ljava/lang/String;
    const/4 v1, 0x3

    move/from16 v0, v22

    if-gt v1, v0, :cond_9

    const-string v1, "\n"

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 388
    .local v18, "parts":[Ljava/lang/String;
    if-eqz v20, :cond_a

    const/4 v14, 0x4

    .line 389
    .local v14, "expectedParts":I
    :goto_4
    move-object/from16 v0, v18

    array-length v1, v0

    if-eq v1, v14, :cond_b

    .line 390
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of parts ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") did not match the expected number of parts ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for this version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 401
    .end local v6    # "friendlyName":Ljava/lang/String;
    .end local v7    # "algorithm":Ljava/lang/String;
    .end local v10    # "encryptedDataIndex":I
    .end local v11    # "encryptedKeys":[B
    .end local v14    # "expectedParts":I
    .end local v15    # "firstColonOffset":I
    .end local v16    # "keys":Ljava/lang/String;
    .end local v18    # "parts":[Ljava/lang/String;
    .end local v20    # "usingDevPay":Z
    .end local v21    # "version":Ljava/lang/String;
    .end local v22    # "versionNum":I
    .end local v23    # "versionString":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 402
    .local v8, "bpe":Ljavax/crypto/BadPaddingException;
    :try_start_5
    new-instance v1, Lorg/jets3t/service/ServiceException;

    const-string v2, "Unable to decrypt credentials. Is your password correct?"

    invoke-direct {v1, v2, v8}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 406
    .end local v8    # "bpe":Ljavax/crypto/BadPaddingException;
    :catchall_0
    move-exception v1

    if-eqz p1, :cond_8

    .line 408
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 410
    :cond_8
    :goto_5
    throw v1

    .line 387
    .restart local v6    # "friendlyName":Ljava/lang/String;
    .restart local v7    # "algorithm":Ljava/lang/String;
    .restart local v10    # "encryptedDataIndex":I
    .restart local v11    # "encryptedKeys":[B
    .restart local v15    # "firstColonOffset":I
    .restart local v16    # "keys":Ljava/lang/String;
    .restart local v20    # "usingDevPay":Z
    .restart local v21    # "version":Ljava/lang/String;
    .restart local v22    # "versionNum":I
    .restart local v23    # "versionString":Ljava/lang/String;
    :cond_9
    :try_start_7
    const-string v1, "AWSKEYS"

    goto :goto_3

    .line 388
    .restart local v18    # "parts":[Ljava/lang/String;
    :cond_a
    const/4 v14, 0x2

    goto :goto_4

    .line 396
    .restart local v14    # "expectedParts":I
    :cond_b
    if-eqz v20, :cond_c

    .line 397
    new-instance v1, Lorg/jets3t/service/security/AWSDevPayCredentials;

    const/4 v2, 0x0

    aget-object v2, v18, v2

    const/4 v3, 0x1

    aget-object v3, v18, v3

    const/4 v4, 0x2

    aget-object v4, v18, v4

    const/4 v5, 0x3

    aget-object v5, v18, v5

    invoke-direct/range {v1 .. v6}, Lorg/jets3t/service/security/AWSDevPayCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 406
    if-eqz p1, :cond_3

    .line 408
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 409
    :catch_2
    move-exception v2

    goto/16 :goto_2

    .line 399
    :cond_c
    :try_start_9
    new-instance v1, Lorg/jets3t/service/security/AWSCredentials;

    const/4 v2, 0x0

    aget-object v2, v18, v2

    const/4 v3, 0x1

    aget-object v3, v18, v3

    invoke-direct {v1, v2, v3, v6}, Lorg/jets3t/service/security/AWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 406
    if-eqz p1, :cond_3

    .line 408
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    .line 409
    :catch_3
    move-exception v2

    goto/16 :goto_2

    .line 403
    .end local v6    # "friendlyName":Ljava/lang/String;
    .end local v7    # "algorithm":Ljava/lang/String;
    .end local v10    # "encryptedDataIndex":I
    .end local v11    # "encryptedKeys":[B
    .end local v14    # "expectedParts":I
    .end local v15    # "firstColonOffset":I
    .end local v16    # "keys":Ljava/lang/String;
    .end local v18    # "parts":[Ljava/lang/String;
    .end local v20    # "usingDevPay":Z
    .end local v21    # "version":Ljava/lang/String;
    .end local v22    # "versionNum":I
    .end local v23    # "versionString":Ljava/lang/String;
    :catch_4
    move-exception v19

    .line 404
    .local v19, "t":Ljava/lang/Throwable;
    :try_start_b
    new-instance v1, Lorg/jets3t/service/ServiceException;

    const-string v2, "Failed to load credentials"

    move-object/from16 v0, v19

    invoke-direct {v1, v2, v0}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 409
    .end local v19    # "t":Ljava/lang/Throwable;
    .restart local v6    # "friendlyName":Ljava/lang/String;
    .restart local v7    # "algorithm":Ljava/lang/String;
    .restart local v10    # "encryptedDataIndex":I
    .restart local v11    # "encryptedKeys":[B
    .restart local v15    # "firstColonOffset":I
    .restart local v20    # "usingDevPay":Z
    .restart local v21    # "version":Ljava/lang/String;
    .restart local v22    # "versionNum":I
    .restart local v23    # "versionString":Ljava/lang/String;
    :catch_5
    move-exception v2

    goto/16 :goto_2

    .end local v6    # "friendlyName":Ljava/lang/String;
    .end local v7    # "algorithm":Ljava/lang/String;
    .end local v10    # "encryptedDataIndex":I
    .end local v11    # "encryptedKeys":[B
    .end local v15    # "firstColonOffset":I
    .end local v20    # "usingDevPay":Z
    .end local v21    # "version":Ljava/lang/String;
    .end local v22    # "versionNum":I
    .end local v23    # "versionString":Ljava/lang/String;
    :catch_6
    move-exception v2

    goto :goto_5
.end method

.method public static load(Ljava/lang/String;Ljava/io/File;)Lorg/jets3t/service/security/ProviderCredentials;
    .locals 6
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 295
    sget-object v3, Lorg/jets3t/service/security/ProviderCredentials;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    sget-object v3, Lorg/jets3t/service/security/ProviderCredentials;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading credentials from file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 298
    :cond_0
    const/4 v0, 0x0

    .line 300
    .local v0, "fileIS":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .end local v0    # "fileIS":Ljava/io/BufferedInputStream;
    .local v1, "fileIS":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {p0, v1}, Lorg/jets3t/service/security/ProviderCredentials;->load(Ljava/lang/String;Ljava/io/BufferedInputStream;)Lorg/jets3t/service/security/ProviderCredentials;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 305
    if-eqz v1, :cond_1

    .line 307
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 309
    :cond_1
    :goto_0
    return-object v3

    .line 302
    .end local v1    # "fileIS":Ljava/io/BufferedInputStream;
    .restart local v0    # "fileIS":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v2

    .line 303
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    new-instance v3, Lorg/jets3t/service/ServiceException;

    const-string v4, "Failed to load credentials"

    invoke-direct {v3, v4, v2}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v0, :cond_2

    .line 307
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 309
    :cond_2
    :goto_3
    throw v3

    .line 308
    .end local v0    # "fileIS":Ljava/io/BufferedInputStream;
    .restart local v1    # "fileIS":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v1    # "fileIS":Ljava/io/BufferedInputStream;
    .restart local v0    # "fileIS":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 305
    .end local v0    # "fileIS":Ljava/io/BufferedInputStream;
    .restart local v1    # "fileIS":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "fileIS":Ljava/io/BufferedInputStream;
    .restart local v0    # "fileIS":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 302
    .end local v0    # "fileIS":Ljava/io/BufferedInputStream;
    .restart local v1    # "fileIS":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "fileIS":Ljava/io/BufferedInputStream;
    .restart local v0    # "fileIS":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jets3t/service/security/ProviderCredentials;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getDataToEncrypt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/security/ProviderCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/jets3t/service/security/ProviderCredentials;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/security/ProviderCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jets3t/service/security/ProviderCredentials;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getTypeName()Ljava/lang/String;
.end method

.method protected abstract getVersionPrefix()Ljava/lang/String;
.end method

.method public hasFriendlyName()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jets3t/service/security/ProviderCredentials;->friendlyName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jets3t/service/security/ProviderCredentials;->friendlyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v0, "PBEWithMD5AndDES"

    invoke-virtual {p0, p1, p2, v0}, Lorg/jets3t/service/security/ProviderCredentials;->save(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0, p1, v1, p3}, Lorg/jets3t/service/security/ProviderCredentials;->save(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 180
    :cond_0
    return-void

    .line 176
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v2

    .line 176
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public save(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    const-string v0, "PBEWithMD5AndDES"

    invoke-virtual {p0, p1, p2, v0}, Lorg/jets3t/service/security/ProviderCredentials;->save(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "bufferedOS":Ljava/io/BufferedOutputStream;
    new-instance v2, Lorg/jets3t/service/security/EncryptionUtil;

    const-string v3, "2"

    invoke-direct {v2, p1, p3, v3}, Lorg/jets3t/service/security/EncryptionUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .local v2, "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    new-instance v0, Ljava/io/BufferedOutputStream;

    .end local v0    # "bufferedOS":Ljava/io/BufferedOutputStream;
    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 241
    .restart local v0    # "bufferedOS":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0}, Lorg/jets3t/service/security/ProviderCredentials;->getDataToEncrypt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jets3t/service/security/EncryptionUtil;->encrypt(Ljava/lang/String;)[B

    move-result-object v1

    .line 244
    .local v1, "encryptedData":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/security/ProviderCredentials;->getVersionPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/jets3t/service/security/EncryptionUtil;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jets3t/service/security/ProviderCredentials;->friendlyName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/security/ProviderCredentials;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 249
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 250
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 251
    return-void

    .line 246
    :cond_0
    iget-object v3, p0, Lorg/jets3t/service/security/ProviderCredentials;->friendlyName:Ljava/lang/String;

    goto :goto_0
.end method
