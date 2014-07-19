.class public Lorg/jets3t/service/security/AWSCredentials;
.super Lorg/jets3t/service/security/ProviderCredentials;
.source "AWSCredentials.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "awsAccessKey"    # Ljava/lang/String;
    .param p2, "awsSecretAccessKey"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/security/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "awsAccessKey"    # Ljava/lang/String;
    .param p2, "awsSecretAccessKey"    # Ljava/lang/String;
    .param p3, "friendlyName"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lorg/jets3t/service/security/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 87
    array-length v10, p0

    if-lt v10, v12, :cond_0

    array-length v10, p0

    if-le v10, v13, :cond_1

    .line 88
    :cond_0
    invoke-static {}, Lorg/jets3t/service/security/AWSCredentials;->printHelp()V

    .line 89
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 91
    :cond_1
    const/4 v10, 0x0

    aget-object v9, p0, v10

    .line 92
    .local v9, "userName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    aget-object v10, p0, v11

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v5, "encryptedFile":Ljava/io/File;
    const-string v0, "PBEWithMD5AndDES"

    .line 94
    .local v0, "algorithm":Ljava/lang/String;
    array-length v10, p0

    if-ne v10, v13, :cond_2

    .line 95
    aget-object v0, p0, v12

    .line 100
    :cond_2
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 101
    .local v8, "testFOS":Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v8    # "testFOS":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    sget-object v11, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 109
    .local v7, "reader":Ljava/io/BufferedReader;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Please enter your AWS Credentials"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Access Key: "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "awsAccessKey":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Secret Key: "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "awsSecretKey":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Please enter a password to protect your credentials file (may be empty)"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Password: "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "password":Ljava/lang/String;
    new-instance v2, Lorg/jets3t/service/security/AWSCredentials;

    invoke-direct {v2, v1, v3, v9}, Lorg/jets3t/service/security/AWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v2, "awsCredentials":Lorg/jets3t/service/security/AWSCredentials;
    invoke-virtual {v2, v6, v5, v0}, Lorg/jets3t/service/security/ProviderCredentials;->save(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 122
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Successfully saved AWS Credentials to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    return-void

    .line 102
    .end local v1    # "awsAccessKey":Ljava/lang/String;
    .end local v2    # "awsCredentials":Lorg/jets3t/service/security/AWSCredentials;
    .end local v3    # "awsSecretKey":Ljava/lang/String;
    .end local v6    # "password":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 103
    .local v4, "e":Ljava/io/IOException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to write to file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static printHelp()V
    .locals 2

    .prologue
    .line 129
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AWSCredentials <User Name> <File Path> [algorithm]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 131
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "User Name: A human-friendly name for the owner of the credentials, e.g. Horace."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "File Path: Path and name for the encrypted file. Will be replaced if it already exists."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Algorithm: PBE encryption algorithm. Defaults to PBEWithMD5AndDES"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    return-void
.end method


# virtual methods
.method protected getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "regular"

    return-object v0
.end method

.method public getVersionPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "jets3t AWS Credentials, version: "

    return-object v0
.end method
