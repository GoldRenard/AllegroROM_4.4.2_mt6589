.class public Lorg/jets3t/service/multi/DownloadPackage;
.super Ljava/lang/Object;
.source "DownloadPackage.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private appendToFile:Z

.field protected encryptionUtil:Lorg/jets3t/service/security/EncryptionUtil;

.field protected isUnzipping:Z

.field protected object:Lorg/jets3t/service/model/StorageObject;

.field protected outputFile:Ljava/io/File;

.field protected outputStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/jets3t/service/multi/DownloadPackage;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/multi/DownloadPackage;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/StorageObject;Ljava/io/File;)V
    .locals 2
    .param p1, "object"    # Lorg/jets3t/service/model/StorageObject;
    .param p2, "outputFile"    # Ljava/io/File;

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jets3t/service/multi/DownloadPackage;-><init>(Lorg/jets3t/service/model/StorageObject;Ljava/io/File;ZLorg/jets3t/service/security/EncryptionUtil;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/StorageObject;Ljava/io/File;ZLorg/jets3t/service/security/EncryptionUtil;)V
    .locals 2
    .param p1, "object"    # Lorg/jets3t/service/model/StorageObject;
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "isUnzipping"    # Z
    .param p4, "encryptionUtil"    # Lorg/jets3t/service/security/EncryptionUtil;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lorg/jets3t/service/multi/DownloadPackage;->object:Lorg/jets3t/service/model/StorageObject;

    .line 48
    iput-object v0, p0, Lorg/jets3t/service/multi/DownloadPackage;->outputFile:Ljava/io/File;

    .line 49
    iput-object v0, p0, Lorg/jets3t/service/multi/DownloadPackage;->outputStream:Ljava/io/OutputStream;

    .line 50
    iput-boolean v1, p0, Lorg/jets3t/service/multi/DownloadPackage;->isUnzipping:Z

    .line 51
    iput-object v0, p0, Lorg/jets3t/service/multi/DownloadPackage;->encryptionUtil:Lorg/jets3t/service/security/EncryptionUtil;

    .line 53
    iput-boolean v1, p0, Lorg/jets3t/service/multi/DownloadPackage;->appendToFile:Z

    .line 62
    iput-object p1, p0, Lorg/jets3t/service/multi/DownloadPackage;->object:Lorg/jets3t/service/model/StorageObject;

    .line 63
    iput-object p2, p0, Lorg/jets3t/service/multi/DownloadPackage;->outputFile:Ljava/io/File;

    .line 64
    iput-boolean p3, p0, Lorg/jets3t/service/multi/DownloadPackage;->isUnzipping:Z

    .line 65
    iput-object p4, p0, Lorg/jets3t/service/multi/DownloadPackage;->encryptionUtil:Lorg/jets3t/service/security/EncryptionUtil;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/StorageObject;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "object"    # Lorg/jets3t/service/model/StorageObject;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jets3t/service/multi/DownloadPackage;-><init>(Lorg/jets3t/service/model/StorageObject;Ljava/io/OutputStream;ZLorg/jets3t/service/security/EncryptionUtil;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/StorageObject;Ljava/io/OutputStream;ZLorg/jets3t/service/security/EncryptionUtil;)V
    .locals 2
    .param p1, "object"    # Lorg/jets3t/service/model/StorageObject;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "isUnzipping"    # Z
    .param p4, "encryptionUtil"    # Lorg/jets3t/service/security/EncryptionUtil;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lorg/jets3t/service/multi/DownloadPackage;->object:Lorg/jets3t/service/model/StorageObject;

    .line 48
    iput-object v0, p0, Lorg/jets3t/service/multi/DownloadPackage;->outputFile:Ljava/io/File;

    .line 49
    iput-object v0, p0, Lorg/jets3t/service/multi/DownloadPackage;->outputStream:Ljava/io/OutputStream;

    .line 50
    iput-boolean v1, p0, Lorg/jets3t/service/multi/DownloadPackage;->isUnzipping:Z

    .line 51
    iput-object v0, p0, Lorg/jets3t/service/multi/DownloadPackage;->encryptionUtil:Lorg/jets3t/service/security/EncryptionUtil;

    .line 53
    iput-boolean v1, p0, Lorg/jets3t/service/multi/DownloadPackage;->appendToFile:Z

    .line 75
    iput-object p1, p0, Lorg/jets3t/service/multi/DownloadPackage;->object:Lorg/jets3t/service/model/StorageObject;

    .line 76
    iput-object p2, p0, Lorg/jets3t/service/multi/DownloadPackage;->outputStream:Ljava/io/OutputStream;

    .line 77
    iput-boolean p3, p0, Lorg/jets3t/service/multi/DownloadPackage;->isUnzipping:Z

    .line 78
    iput-object p4, p0, Lorg/jets3t/service/multi/DownloadPackage;->encryptionUtil:Lorg/jets3t/service/security/EncryptionUtil;

    .line 79
    return-void
.end method


# virtual methods
.method public getDataFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jets3t/service/multi/DownloadPackage;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method public getObject()Lorg/jets3t/service/model/StorageObject;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jets3t/service/multi/DownloadPackage;->object:Lorg/jets3t/service/model/StorageObject;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, "outputStream":Ljava/io/OutputStream;
    iget-object v4, p0, Lorg/jets3t/service/multi/DownloadPackage;->outputFile:Ljava/io/File;

    if-eqz v4, :cond_3

    .line 129
    iget-object v4, p0, Lorg/jets3t/service/multi/DownloadPackage;->outputFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 130
    iget-object v4, p0, Lorg/jets3t/service/multi/DownloadPackage;->outputFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 133
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    iget-object v4, p0, Lorg/jets3t/service/multi/DownloadPackage;->outputFile:Ljava/io/File;

    iget-boolean v5, p0, Lorg/jets3t/service/multi/DownloadPackage;->appendToFile:Z

    invoke-direct {v2, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 138
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    iget-boolean v4, p0, Lorg/jets3t/service/multi/DownloadPackage;->isUnzipping:Z

    if-eqz v4, :cond_1

    .line 139
    sget-object v4, Lorg/jets3t/service/multi/DownloadPackage;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inflating gzipped data for object: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jets3t/service/multi/DownloadPackage;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v6}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 140
    new-instance v3, Lorg/jets3t/service/io/GZipInflatingOutputStream;

    invoke-direct {v3, v2}, Lorg/jets3t/service/io/GZipInflatingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 142
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    iget-object v4, p0, Lorg/jets3t/service/multi/DownloadPackage;->encryptionUtil:Lorg/jets3t/service/security/EncryptionUtil;

    if-eqz v4, :cond_2

    .line 143
    sget-object v4, Lorg/jets3t/service/multi/DownloadPackage;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decrypting encrypted data for object: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jets3t/service/multi/DownloadPackage;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v6}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 145
    :try_start_0
    iget-object v4, p0, Lorg/jets3t/service/multi/DownloadPackage;->encryptionUtil:Lorg/jets3t/service/security/EncryptionUtil;

    invoke-virtual {v4, v2}, Lorg/jets3t/service/security/EncryptionUtil;->decrypt(Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 168
    :cond_2
    return-object v2

    .line 135
    :cond_3
    iget-object v2, p0, Lorg/jets3t/service/multi/DownloadPackage;->outputStream:Ljava/io/OutputStream;

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 150
    throw v1

    .line 152
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .end local v1    # "exception":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v1    # "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 155
    throw v1

    .line 157
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .end local v1    # "exception":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 158
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 159
    .restart local v1    # "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 160
    throw v1

    .line 162
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "exception":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 163
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v1    # "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 165
    throw v1
.end method

.method public isAppendToFile()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/jets3t/service/multi/DownloadPackage;->appendToFile:Z

    return v0
.end method

.method public setAppendToFile(Z)V
    .locals 0
    .param p1, "appendToFile"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/jets3t/service/multi/DownloadPackage;->appendToFile:Z

    .line 110
    return-void
.end method

.method public setObject(Lorg/jets3t/service/model/StorageObject;)V
    .locals 0
    .param p1, "object"    # Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/jets3t/service/multi/DownloadPackage;->object:Lorg/jets3t/service/model/StorageObject;

    .line 87
    return-void
.end method
