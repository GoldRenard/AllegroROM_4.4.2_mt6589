.class public Lorg/jets3t/service/utils/FileComparer;
.super Ljava/lang/Object;
.source "FileComparer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private jets3tProperties:Lorg/jets3t/service/Jets3tProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lorg/jets3t/service/utils/FileComparer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/Jets3tProperties;)V
    .locals 1
    .param p1, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/utils/FileComparer;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    .line 85
    iput-object p1, p0, Lorg/jets3t/service/utils/FileComparer;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    .line 86
    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method public static getInstance()Lorg/jets3t/service/utils/FileComparer;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lorg/jets3t/service/utils/FileComparer;

    sget-object v1, Lorg/jets3t/service/Constants;->JETS3T_PROPERTIES_FILENAME:Ljava/lang/String;

    invoke-static {v1}, Lorg/jets3t/service/Jets3tProperties;->getInstance(Ljava/lang/String;)Lorg/jets3t/service/Jets3tProperties;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/utils/FileComparer;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    return-object v0
.end method

.method public static getInstance(Lorg/jets3t/service/Jets3tProperties;)Lorg/jets3t/service/utils/FileComparer;
    .locals 1
    .param p0, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;

    .prologue
    .line 95
    new-instance v0, Lorg/jets3t/service/utils/FileComparer;

    invoke-direct {v0, p0}, Lorg/jets3t/service/utils/FileComparer;-><init>(Lorg/jets3t/service/Jets3tProperties;)V

    return-object v0
.end method

.method private splitFilePathIntoDirPaths(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isDirectoryPlaceholder"    # Z

    .prologue
    .line 1237
    sget-object v5, Lorg/jets3t/service/Constants;->FILE_PATH_DELIM:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1238
    .local v4, "pathComponents":[Ljava/lang/String;
    array-length v5, v4

    new-array v0, v5, [Ljava/lang/String;

    .line 1239
    .local v0, "dirPathsInOrder":[Ljava/lang/String;
    const-string v2, ""

    .line 1240
    .local v2, "myPath":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 1241
    aget-object v3, v4, v1

    .line 1242
    .local v3, "pathComponent":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1243
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_0

    if-eqz p2, :cond_1

    .line 1244
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/jets3t/service/Constants;->FILE_PATH_DELIM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1246
    :cond_1
    aput-object v2, v0, v1

    .line 1240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1248
    .end local v3    # "pathComponent":Ljava/lang/String;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public buildDiscrepancyLists(Ljava/util/Map;Ljava/util/Map;)Lorg/jets3t/service/utils/FileComparerResults;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            ">;)",
            "Lorg/jets3t/service/utils/FileComparerResults;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1030
    .local p1, "objectKeyToFilepathMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "objectsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jets3t/service/utils/FileComparer;->buildDiscrepancyLists(Ljava/util/Map;Ljava/util/Map;Lorg/jets3t/service/io/BytesProgressWatcher;Z)Lorg/jets3t/service/utils/FileComparerResults;

    move-result-object v0

    return-object v0
.end method

.method public buildDiscrepancyLists(Ljava/util/Map;Ljava/util/Map;Lorg/jets3t/service/io/BytesProgressWatcher;)Lorg/jets3t/service/utils/FileComparerResults;
    .locals 1
    .param p3, "progressWatcher"    # Lorg/jets3t/service/io/BytesProgressWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            ">;",
            "Lorg/jets3t/service/io/BytesProgressWatcher;",
            ")",
            "Lorg/jets3t/service/utils/FileComparerResults;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1056
    .local p1, "objectKeyToFilepathMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "objectsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jets3t/service/utils/FileComparer;->buildDiscrepancyLists(Ljava/util/Map;Ljava/util/Map;Lorg/jets3t/service/io/BytesProgressWatcher;Z)Lorg/jets3t/service/utils/FileComparerResults;

    move-result-object v0

    return-object v0
.end method

.method public buildDiscrepancyLists(Ljava/util/Map;Ljava/util/Map;Lorg/jets3t/service/io/BytesProgressWatcher;Z)Lorg/jets3t/service/utils/FileComparerResults;
    .locals 31
    .param p3, "progressWatcher"    # Lorg/jets3t/service/io/BytesProgressWatcher;
    .param p4, "isForceUpload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            ">;",
            "Lorg/jets3t/service/io/BytesProgressWatcher;",
            "Z)",
            "Lorg/jets3t/service/utils/FileComparerResults;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1086
    .local p1, "objectKeyToFilepathMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "objectsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .local v4, "onlyOnServerKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    .local v5, "updatedOnServerKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .local v6, "updatedOnClientKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    .local v7, "onlyOnClientKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .local v8, "alreadySynchronisedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .local v9, "alreadySynchronisedLocalPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1098
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 1099
    .local v23, "objectsMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;>;"
    :cond_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1100
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1101
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1102
    .local v17, "keyPath":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/jets3t/service/model/StorageObject;

    .line 1104
    .local v25, "storageObject":Lorg/jets3t/service/model/StorageObject;
    invoke-virtual/range {v25 .. v25}, Lorg/jets3t/service/model/StorageObject;->isDirectoryPlaceholder()Z

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lorg/jets3t/service/utils/FileComparer;->splitFilePathIntoDirPaths(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v24

    .line 1107
    .local v24, "splitPathComponents":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1108
    .local v11, "componentCount":I
    move-object/from16 v10, v24

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-object v19, v10, v16

    .line 1109
    .local v19, "localPath":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    .line 1111
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1114
    .local v15, "filepath":Ljava/lang/String;
    if-eqz v15, :cond_d

    .line 1116
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1119
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1123
    move-object/from16 v0, v24

    array-length v3, v0

    if-ne v11, v3, :cond_1

    .line 1124
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v26

    .line 1130
    .local v26, "wasRemoved":Z
    if-nez v26, :cond_1

    const-string v3, "/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {v25 .. v25}, Lorg/jets3t/service/model/StorageObject;->isDirectoryPlaceholder()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, "/"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1108
    .end local v13    # "file":Ljava/io/File;
    .end local v26    # "wasRemoved":Z
    :cond_1
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1138
    .restart local v13    # "file":Ljava/io/File;
    :cond_2
    if-eqz p4, :cond_3

    .line 1141
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1147
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lorg/jets3t/service/utils/FileComparer;->generateFileMD5Hash(Ljava/io/File;Ljava/lang/String;Lorg/jets3t/service/io/BytesProgressWatcher;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v14

    .line 1151
    .local v14, "fileHashAsBase64":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1152
    .local v21, "objectHash":Ljava/lang/String;
    const-string v3, "original-md5-hash"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/jets3t/service/model/BaseStorageItem;->containsMetadata(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1154
    const-string v3, "original-md5-hash"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "objectHash":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .line 1156
    .restart local v21    # "objectHash":Ljava/lang/String;
    sget-object v3, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1157
    sget-object v3, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Object in service is encoded, using the object\'s original hash value for: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v25 .. v25}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1165
    :cond_4
    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1167
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1162
    :cond_5
    invoke-virtual/range {v25 .. v25}, Lorg/jets3t/service/model/StorageObject;->getMd5HashAsBase64()Ljava/lang/String;

    move-result-object v21

    goto :goto_2

    .line 1172
    :cond_6
    const/16 v22, 0x0

    .line 1173
    .local v22, "objectLastModified":Ljava/util/Date;
    const-string v3, "jets3t-original-file-date-iso8601"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1176
    .local v20, "metadataLocalFileDate":Ljava/lang/String;
    if-nez v20, :cond_8

    .line 1178
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/utils/FileComparer;->isAssumeLocalLatestInMismatch()Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1179
    sget-object v3, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    const-string v27, "Using service last modified date as file date. This is not reliable as the time according to service can differ from your local system time. Please use the metadata item jets3t-original-file-date-iso8601"

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1184
    :cond_7
    invoke-virtual/range {v25 .. v25}, Lorg/jets3t/service/model/StorageObject;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v22

    .line 1189
    :goto_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v27

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v29

    cmp-long v3, v27, v29

    if-lez v3, :cond_9

    .line 1190
    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1186
    :cond_8
    invoke-static/range {v20 .. v20}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v22

    goto :goto_3

    .line 1192
    :cond_9
    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v27

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v29

    cmp-long v3, v27, v29

    if-gez v3, :cond_a

    .line 1193
    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1194
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1199
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/utils/FileComparer;->isAssumeLocalLatestInMismatch()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1200
    sget-object v3, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1201
    sget-object v3, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Backed-up object \""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v25 .. v25}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\" and local file \""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\" have the same date but different hash values. "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "Assuming local file is the latest version."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1206
    :cond_b
    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1209
    :cond_c
    new-instance v3, Ljava/io/IOException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Backed-up object \""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v25 .. v25}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\" and local file \""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\" have the same date but different hash values. "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "This shouldn\'t happen!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1224
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "fileHashAsBase64":Ljava/lang/String;
    .end local v20    # "metadataLocalFileDate":Ljava/lang/String;
    .end local v21    # "objectHash":Ljava/lang/String;
    .end local v22    # "objectLastModified":Ljava/util/Date;
    :cond_d
    move-object/from16 v0, v24

    array-length v3, v0

    if-ne v11, v3, :cond_1

    .line 1225
    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1232
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "componentCount":I
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    .end local v15    # "filepath":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v17    # "keyPath":Ljava/lang/String;
    .end local v18    # "len$":I
    .end local v19    # "localPath":Ljava/lang/String;
    .end local v24    # "splitPathComponents":[Ljava/lang/String;
    .end local v25    # "storageObject":Lorg/jets3t/service/model/StorageObject;
    :cond_e
    new-instance v3, Lorg/jets3t/service/utils/FileComparerResults;

    invoke-direct/range {v3 .. v9}, Lorg/jets3t/service/utils/FileComparerResults;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method protected buildIgnoreRegexpList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "parentIgnorePatternList":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v4, "ignorePatternList":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    if-eqz p2, :cond_2

    .line 131
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 132
    .local v7, "parentIgnorePatternIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/regex/Pattern;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 133
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/regex/Pattern;

    .line 134
    .local v9, "parentPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v9}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "parentIgnorePatternString":Ljava/lang/String;
    sget-object v15, Lorg/jets3t/service/Constants;->FILE_PATH_DELIM:Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 138
    .local v13, "slashOffset":I
    if-ltz v13, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v16, v13, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 140
    const/4 v15, 0x0

    invoke-virtual {v8, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, "patternHeader":Ljava/lang/String;
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 143
    .local v12, "patternTail":Ljava/lang/String;
    const-string v15, ".*.*"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 147
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 152
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v7    # "parentIgnorePatternIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/regex/Pattern;>;"
    .end local v8    # "parentIgnorePatternString":Ljava/lang/String;
    .end local v9    # "parentPattern":Ljava/util/regex/Pattern;
    .end local v11    # "patternHeader":Ljava/lang/String;
    .end local v12    # "patternTail":Ljava/lang/String;
    .end local v13    # "slashOffset":I
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_4

    .line 211
    :cond_3
    :goto_1
    return-object v4

    .line 162
    :cond_4
    new-instance v6, Ljava/io/File;

    sget-object v15, Lorg/jets3t/service/Constants;->JETS3T_IGNORE_FILENAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v6, "jets3tIgnoreFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 164
    sget-object v15, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v15}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 165
    sget-object v15, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Found ignore file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 168
    :cond_5
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lorg/jets3t/service/utils/ServiceUtils;->readInputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "ignorePaths":Ljava/lang/String;
    new-instance v14, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\n"

    invoke-direct/range {v14 .. v16}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v14, "st":Ljava/util/StringTokenizer;
    :cond_6
    :goto_2
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 172
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "ignorePath":Ljava/lang/String;
    move-object v5, v2

    .line 176
    .local v5, "ignoreRegexp":Ljava/lang/String;
    const-string v15, "\\."

    const-string v16, "\\\\."

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    const-string v15, "\\*"

    const-string v16, ".*"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 178
    const-string v15, "\\?"

    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 181
    .local v10, "pattern":Ljava/util/regex/Pattern;
    sget-object v15, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v15}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 182
    sget-object v15, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Ignore path \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' has become the regexp: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 185
    :cond_7
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v10}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v15

    const-string v16, ".*.*/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v10}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 190
    invoke-virtual {v10}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 194
    .end local v2    # "ignorePath":Ljava/lang/String;
    .end local v3    # "ignorePaths":Ljava/lang/String;
    .end local v5    # "ignoreRegexp":Ljava/lang/String;
    .end local v10    # "pattern":Ljava/util/regex/Pattern;
    .end local v14    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/IOException;
    sget-object v15, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v15}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 196
    sget-object v15, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to read contents of ignore file \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 202
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/jets3t/service/utils/FileComparer;->isSkipMd5FileUpload()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 203
    const-string v15, ".*\\.md5"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 204
    .restart local v10    # "pattern":Ljava/util/regex/Pattern;
    sget-object v15, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v15}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 205
    sget-object v15, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipping upload of pre-computed MD5 files with path \'*.md5\' using the regexp: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 208
    :cond_9
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public buildObjectKeyToFilepathMap([Ljava/io/File;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 11
    .param p1, "fileList"    # [Ljava/io/File;
    .param p2, "fileKeyPrefix"    # Ljava/lang/String;
    .param p3, "includeDirectories"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 328
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 329
    :cond_0
    const-string p2, ""

    .line 333
    :cond_1
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 334
    .local v3, "objectKeyToFilepathMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 335
    .local v5, "ignorePatternList":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    const/4 v8, 0x0

    .line 337
    .local v8, "ignorePatternListForCurrentDir":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    move-object v6, p1

    .local v6, "arr$":[Ljava/io/File;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_8

    aget-object v1, v6, v7

    .line 338
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4

    .line 341
    if-nez v8, :cond_2

    .line 342
    new-instance v0, Ljava/io/File;

    const-string v4, "."

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v10}, Lorg/jets3t/service/utils/FileComparer;->buildIgnoreRegexpList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 344
    :cond_2
    move-object v5, v8

    .line 349
    :goto_1
    invoke-virtual {p0, v5, v1}, Lorg/jets3t/service/utils/FileComparer;->isIgnored(Ljava/util/List;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 350
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 337
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 346
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lorg/jets3t/service/utils/FileComparer;->buildIgnoreRegexpList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 353
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/utils/FileComparer;->normalizeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "objectKeyName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_6

    .line 355
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 357
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lorg/jets3t/service/Constants;->FILE_PATH_DELIM:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    if-eqz p3, :cond_7

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object v0, p0

    move v4, p3

    .line 361
    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/utils/FileComparer;->buildObjectKeyToFilepathMapForDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)V

    goto :goto_2

    .line 367
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "objectKeyName":Ljava/lang/String;
    :cond_8
    return-object v3
.end method

.method protected buildObjectKeyToFilepathMapForDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)V
    .locals 10
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "fileKeyPrefix"    # Ljava/lang/String;
    .param p4, "includeDirectories"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p3, "objectKeyToFilepathMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "parentIgnorePatternList":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    invoke-virtual {p0, p1, p5}, Lorg/jets3t/service/utils/FileComparer;->buildIgnoreRegexpList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 408
    .local v5, "ignorePatternList":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 411
    .local v7, "files":[Ljava/io/File;
    if-nez v7, :cond_0

    .line 412
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to list files in directory path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    move-object v6, v7

    .local v6, "arr$":[Ljava/io/File;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v1, v6, v8

    .line 418
    .local v1, "childFile":Ljava/io/File;
    invoke-virtual {p0, v5, v1}, Lorg/jets3t/service/utils/FileComparer;->isIgnored(Ljava/util/List;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/utils/FileComparer;->normalizeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "objectKeyName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 422
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v2    # "objectKeyName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 424
    .restart local v2    # "objectKeyName":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lorg/jets3t/service/Constants;->FILE_PATH_DELIM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    if-eqz p4, :cond_3

    .line 426
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v0, p0

    move-object v3, p3

    move v4, p4

    .line 428
    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/utils/FileComparer;->buildObjectKeyToFilepathMapForDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)V

    goto :goto_1

    .line 434
    .end local v1    # "childFile":Ljava/io/File;
    .end local v2    # "objectKeyName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public buildObjectMap(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZLorg/jets3t/service/io/BytesProgressWatcher;Lorg/jets3t/service/multi/StorageServiceEventListener;)Ljava/util/Map;
    .locals 11
    .param p1, "service"    # Lorg/jets3t/service/StorageService;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "targetPath"    # Ljava/lang/String;
    .param p5, "forceMetadataDownload"    # Z
    .param p6, "isForceUpload"    # Z
    .param p7, "progressWatcher"    # Lorg/jets3t/service/io/BytesProgressWatcher;
    .param p8, "eventListener"    # Lorg/jets3t/service/multi/StorageServiceEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jets3t/service/StorageService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lorg/jets3t/service/io/BytesProgressWatcher;",
            "Lorg/jets3t/service/multi/StorageServiceEventListener;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 648
    .local p4, "objectKeyToFilepathMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v10, p3

    .line 649
    .local v10, "prefix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, p2, v10}, Lorg/jets3t/service/utils/FileComparer;->listObjectsThreaded(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v4

    .local v4, "objectsIncomplete":[Lorg/jets3t/service/model/StorageObject;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 651
    invoke-virtual/range {v0 .. v9}, Lorg/jets3t/service/utils/FileComparer;->lookupObjectMetadataForPotentialClashes(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;Ljava/util/Map;ZZLorg/jets3t/service/io/BytesProgressWatcher;Lorg/jets3t/service/multi/StorageServiceEventListener;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 648
    .end local v4    # "objectsIncomplete":[Lorg/jets3t/service/model/StorageObject;
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public buildObjectMapPartial(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZZLorg/jets3t/service/io/BytesProgressWatcher;Lorg/jets3t/service/multi/StorageServiceEventListener;)Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;
    .locals 19
    .param p1, "service"    # Lorg/jets3t/service/StorageService;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "targetPath"    # Ljava/lang/String;
    .param p4, "priorLastKey"    # Ljava/lang/String;
    .param p6, "completeListing"    # Z
    .param p7, "forceMetadataDownload"    # Z
    .param p8, "isForceUpload"    # Z
    .param p9, "progressWatcher"    # Lorg/jets3t/service/io/BytesProgressWatcher;
    .param p10, "eventListener"    # Lorg/jets3t/service/multi/StorageServiceEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jets3t/service/StorageService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Lorg/jets3t/service/io/BytesProgressWatcher;",
            "Lorg/jets3t/service/multi/StorageServiceEventListener;",
            ")",
            "Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 708
    .local p5, "objectKeyToFilepathMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v5, p3

    .line 709
    .local v5, "prefix":Ljava/lang/String;
    :goto_0
    const/4 v10, 0x0

    .line 710
    .local v10, "objects":[Lorg/jets3t/service/model/StorageObject;
    const/16 v18, 0x0

    .line 711
    .local v18, "resultPriorLastKey":Ljava/lang/String;
    if-eqz p6, :cond_1

    .line 712
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lorg/jets3t/service/utils/FileComparer;->listObjectsThreaded(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v10

    :goto_1
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p5

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    .line 721
    invoke-virtual/range {v6 .. v15}, Lorg/jets3t/service/utils/FileComparer;->lookupObjectMetadataForPotentialClashes(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;Ljava/util/Map;ZZLorg/jets3t/service/io/BytesProgressWatcher;Lorg/jets3t/service/multi/StorageServiceEventListener;)Ljava/util/Map;

    move-result-object v17

    .line 724
    .local v17, "objectsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    new-instance v3, Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v3, v0, v1, v2}, Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;-><init>(Lorg/jets3t/service/utils/FileComparer;Ljava/util/Map;Ljava/lang/String;)V

    return-object v3

    .line 708
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v10    # "objects":[Lorg/jets3t/service/model/StorageObject;
    .end local v17    # "objectsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    .end local v18    # "resultPriorLastKey":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 714
    .restart local v5    # "prefix":Ljava/lang/String;
    .restart local v10    # "objects":[Lorg/jets3t/service/model/StorageObject;
    .restart local v18    # "resultPriorLastKey":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    const-wide/16 v7, 0x3e8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v9, p4

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lorg/jets3t/service/StorageService;->listObjectsChunked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lorg/jets3t/service/StorageObjectsChunk;

    .end local v10    # "objects":[Lorg/jets3t/service/model/StorageObject;
    move-result-object v16

    .line 717
    .local v16, "chunk":Lorg/jets3t/service/StorageObjectsChunk;
    invoke-virtual/range {v16 .. v16}, Lorg/jets3t/service/StorageObjectsChunk;->getObjects()[Lorg/jets3t/service/model/StorageObject;

    move-result-object v10

    .line 718
    .restart local v10    # "objects":[Lorg/jets3t/service/model/StorageObject;
    invoke-virtual/range {v16 .. v16}, Lorg/jets3t/service/StorageObjectsChunk;->getPriorLastKey()Ljava/lang/String;

    move-result-object v18

    goto :goto_1
.end method

.method public generateFileMD5Hash(Ljava/io/File;Ljava/lang/String;Lorg/jets3t/service/io/BytesProgressWatcher;)[B
    .locals 15
    .param p1, "file"    # Ljava/io/File;
    .param p2, "relativeFilePath"    # Ljava/lang/String;
    .param p3, "progressWatcher"    # Lorg/jets3t/service/io/BytesProgressWatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 931
    const/4 v3, 0x0

    .line 934
    .local v3, "computedHash":[B
    invoke-virtual {p0}, Lorg/jets3t/service/utils/FileComparer;->getMd5FilesRootDirectoryFile()Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_5

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lorg/jets3t/service/utils/FileComparer;->getMd5FilesRootDirectoryFile()Ljava/io/File;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".md5"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 937
    .local v4, "computedHashFile":Ljava/io/File;
    :goto_0
    invoke-virtual {p0}, Lorg/jets3t/service/utils/FileComparer;->isUseMd5Files()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    .line 941
    const/4 v1, 0x0

    .line 944
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\s"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {v11}, Lorg/jets3t/service/utils/ServiceUtils;->fromHex(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v3

    .line 956
    if-eqz v2, :cond_0

    .line 957
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 962
    .end local v2    # "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 965
    const/4 v8, 0x0

    .line 966
    .local v8, "hashInputStream":Ljava/io/InputStream;
    if-eqz p3, :cond_9

    .line 967
    new-instance v8, Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    .end local v8    # "hashInputStream":Ljava/io/InputStream;
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p3

    invoke-direct {v8, v11, v0}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;-><init>(Ljava/io/InputStream;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .line 972
    .restart local v8    # "hashInputStream":Ljava/io/InputStream;
    :goto_2
    invoke-static {v8}, Lorg/jets3t/service/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 975
    .end local v8    # "hashInputStream":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {p0}, Lorg/jets3t/service/utils/FileComparer;->isGenerateMd5Files()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".md5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_4

    .line 980
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 981
    .local v9, "parentDir":Ljava/io/File;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 982
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 986
    :cond_3
    const/4 v6, 0x0

    .line 988
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_2
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 989
    .end local v6    # "fw":Ljava/io/FileWriter;
    .local v7, "fw":Ljava/io/FileWriter;
    :try_start_3
    invoke-static {v3}, Lorg/jets3t/service/utils/ServiceUtils;->toHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1000
    if-eqz v7, :cond_4

    .line 1001
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    .line 1006
    .end local v7    # "fw":Ljava/io/FileWriter;
    .end local v9    # "parentDir":Ljava/io/File;
    :cond_4
    :goto_3
    return-object v3

    .line 934
    .end local v4    # "computedHashFile":Ljava/io/File;
    :cond_5
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".md5"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 946
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "computedHashFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 947
    .local v5, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v10

    .line 948
    .local v10, "wasDeleted":Z
    sget-object v11, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v10, :cond_6

    .line 949
    sget-object v11, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to read hash from computed MD5 file; file has been deleted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 952
    :cond_6
    sget-object v11, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    if-nez v10, :cond_7

    .line 953
    sget-object v11, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    const-string v12, "Unable to read hash from computed MD5 file and failed to delete it"

    invoke-interface {v11, v12, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 956
    :cond_7
    if-eqz v1, :cond_0

    .line 957
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_1

    .line 956
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "wasDeleted":Z
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v1, :cond_8

    .line 957
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 956
    :cond_8
    throw v11

    .line 970
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "hashInputStream":Ljava/io/InputStream;
    :cond_9
    new-instance v8, Ljava/io/FileInputStream;

    .end local v8    # "hashInputStream":Ljava/io/InputStream;
    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v8    # "hashInputStream":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 990
    .end local v8    # "hashInputStream":Ljava/io/InputStream;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v9    # "parentDir":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 991
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v10

    .line 992
    .restart local v10    # "wasDeleted":Z
    sget-object v11, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v10, :cond_a

    .line 993
    sget-object v11, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to write computed MD5 hash to file; file has been deleted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 996
    :cond_a
    sget-object v11, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v11

    if-eqz v11, :cond_b

    if-nez v10, :cond_b

    .line 997
    sget-object v11, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    const-string v12, "Unable to write computed MD5 hash to file"

    invoke-interface {v11, v12, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1000
    :cond_b
    if-eqz v6, :cond_4

    .line 1001
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    goto/16 :goto_3

    .line 1000
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "wasDeleted":Z
    :catchall_1
    move-exception v11

    :goto_7
    if-eqz v6, :cond_c

    .line 1001
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    .line 1000
    :cond_c
    throw v11

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    goto :goto_7

    .line 990
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    :catch_2
    move-exception v5

    move-object v6, v7

    .end local v7    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    goto :goto_6

    .line 956
    .end local v6    # "fw":Ljava/io/FileWriter;
    .end local v9    # "parentDir":Ljava/io/File;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 946
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method public getMd5FilesRootDirectoryFile()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1300
    iget-object v2, p0, Lorg/jets3t/service/utils/FileComparer;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v3, "filecomparer.md5-files-root-dir"

    invoke-virtual {v2, v3, v0}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1302
    .local v1, "dirPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1303
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1304
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1305
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filecomparer.md5-files-root-dir path is not a directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1310
    .end local v0    # "dirFile":Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method public isAssumeLocalLatestInMismatch()Z
    .locals 3

    .prologue
    .line 1288
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparer;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "filecomparer.assume-local-latest-in-mismatch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGenerateMd5Files()Z
    .locals 3

    .prologue
    .line 1272
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparer;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "filecomparer.generate-md5-files"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected isIgnored(Ljava/util/List;Ljava/io/File;)Z
    .locals 7
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "ignorePatternList":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    const/4 v4, 0x1

    .line 230
    invoke-virtual {p0}, Lorg/jets3t/service/utils/FileComparer;->isSkipSymlinks()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 240
    sget-object v3, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    sget-object v5, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring symlink "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "directory"

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    move v3, v4

    .line 276
    :goto_1
    return v3

    .line 241
    :cond_1
    const-string v3, "file"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to determine whether "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "directory"

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\' is a symlink"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 256
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_5

    .line 257
    sget-object v3, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    sget-object v3, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring special file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    move v3, v4

    .line 260
    goto :goto_1

    .line 249
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_4
    const-string v3, "file"

    goto :goto_2

    .line 263
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 264
    .local v2, "patternIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/regex/Pattern;>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 265
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 267
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 268
    sget-object v3, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 269
    sget-object v5, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "directory"

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " matching pattern \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\': "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_7
    move v3, v4

    .line 272
    goto/16 :goto_1

    .line 269
    :cond_8
    const-string v3, "file"

    goto :goto_3

    .line 276
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public isSkipMd5FileUpload()Z
    .locals 3

    .prologue
    .line 1280
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparer;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "filecomparer.skip-upload-of-md5-files"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSkipSymlinks()Z
    .locals 3

    .prologue
    .line 1256
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparer;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "filecomparer.skip-symlinks"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUseMd5Files()Z
    .locals 3

    .prologue
    .line 1264
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparer;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    const-string v1, "filecomparer.use-md5-files"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public listObjectsThreaded(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;
    .locals 8
    .param p1, "service"    # Lorg/jets3t/service/StorageService;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v4, 0x0

    .line 595
    .local v4, "delimiter":Ljava/lang/String;
    const/4 v5, 0x0

    .line 598
    .local v5, "toDepth":I
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparer;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filecomparer.bucket-listing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/Jets3tProperties;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 600
    .local v6, "bucketListingProperties":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 601
    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 602
    .local v7, "splits":[Ljava/lang/String;
    array-length v0, v7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 603
    new-instance v0, Lorg/jets3t/service/ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid setting for bucket listing property filecomparer.bucket-listing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_0
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 609
    const/4 v0, 0x1

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .end local v7    # "splits":[Ljava/lang/String;
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 612
    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/utils/FileComparer;->listObjectsThreaded(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    return-object v0
.end method

.method public listObjectsThreaded(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[Lorg/jets3t/service/model/StorageObject;
    .locals 15
    .param p1, "service"    # Lorg/jets3t/service/StorageService;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "targetPath"    # Ljava/lang/String;
    .param p4, "delimiter"    # Ljava/lang/String;
    .param p5, "toDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 477
    .local v4, "allObjects":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 479
    .local v5, "lastCommonPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    new-array v6, v1, [Lorg/jets3t/service/ServiceException;

    .line 485
    .local v6, "serviceExceptions":[Lorg/jets3t/service/ServiceException;
    new-instance v9, Lorg/jets3t/service/multi/ThreadedStorageService;

    new-instance v1, Lorg/jets3t/service/utils/FileComparer$1;

    move-object v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/jets3t/service/utils/FileComparer$1;-><init>(Lorg/jets3t/service/utils/FileComparer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Lorg/jets3t/service/ServiceException;)V

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    .line 514
    .local v9, "threadedService":Lorg/jets3t/service/multi/ThreadedStorageService;
    const/4 v1, 0x1

    new-array v14, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v14, v1

    .line 515
    .local v14, "prefixesToList":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 517
    .local v13, "currentDepth":I
    :goto_0
    move/from16 v0, p5

    if-gt v13, v0, :cond_3

    array-length v1, v14

    if-lez v1, :cond_3

    .line 518
    sget-object v1, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    sget-object v1, Lorg/jets3t/service/utils/FileComparer;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listing objects in \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " prefixes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 526
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 527
    move-object v11, v14

    .line 528
    .local v11, "finalPrefixes":[Ljava/lang/String;
    move/from16 v0, p5

    if-ge v13, v0, :cond_1

    move-object/from16 v12, p4

    .line 534
    .local v12, "finalDelimiter":Ljava/lang/String;
    :goto_1
    new-instance v7, Lorg/jets3t/service/utils/FileComparer$2;

    move-object v8, p0

    move-object/from16 v10, p2

    invoke-direct/range {v7 .. v12}, Lorg/jets3t/service/utils/FileComparer$2;-><init>(Lorg/jets3t/service/utils/FileComparer;Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/jets3t/service/utils/FileComparer$2;->run()V

    .line 542
    const/4 v1, 0x0

    aget-object v1, v6, v1

    if-eqz v1, :cond_2

    .line 543
    const/4 v1, 0x0

    aget-object v1, v6, v1

    throw v1

    .line 528
    .end local v12    # "finalDelimiter":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 548
    .restart local v12    # "finalDelimiter":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "prefixesToList":[Ljava/lang/String;
    check-cast v14, [Ljava/lang/String;

    .line 551
    .restart local v14    # "prefixesToList":[Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    .line 552
    goto :goto_0

    .line 554
    .end local v11    # "finalPrefixes":[Ljava/lang/String;
    .end local v12    # "finalDelimiter":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/StorageObject;

    return-object v1
.end method

.method public lookupObjectMetadataForPotentialClashes(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;Ljava/util/Map;ZZLorg/jets3t/service/io/BytesProgressWatcher;Lorg/jets3t/service/multi/StorageServiceEventListener;)Ljava/util/Map;
    .locals 22
    .param p1, "service"    # Lorg/jets3t/service/StorageService;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "targetPath"    # Ljava/lang/String;
    .param p4, "objectsWithoutMetadata"    # [Lorg/jets3t/service/model/StorageObject;
    .param p6, "forceMetadataDownload"    # Z
    .param p7, "isForceUpload"    # Z
    .param p8, "progressWatcher"    # Lorg/jets3t/service/io/BytesProgressWatcher;
    .param p9, "eventListener"    # Lorg/jets3t/service/multi/StorageServiceEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jets3t/service/StorageService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lorg/jets3t/service/model/StorageObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lorg/jets3t/service/io/BytesProgressWatcher;",
            "Lorg/jets3t/service/multi/StorageServiceEventListener;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 764
    .local p5, "objectKeyToFilepathMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/utils/FileComparer;->populateObjectMap(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Ljava/util/Map;

    move-result-object v12

    .line 768
    .local v12, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    if-eqz p7, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-object v12

    .line 773
    :cond_1
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 774
    .local v14, "objectsForMetadataRetrieval":Ljava/util/Set;, "Ljava/util/Set<Lorg/jets3t/service/model/StorageObject;>;"
    move-object/from16 v3, p4

    .local v3, "arr$":[Lorg/jets3t/service/model/StorageObject;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_8

    aget-object v10, v3, v8

    .line 775
    .local v10, "object":Lorg/jets3t/service/model/StorageObject;
    invoke-virtual {v10}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 776
    .local v11, "objectKey":Ljava/lang/String;
    if-eqz p6, :cond_3

    .line 778
    invoke-interface {v14, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 781
    :cond_3
    invoke-virtual {v10}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/jets3t/service/utils/ServiceUtils;->isEtagAlsoAnMD5Hash(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 784
    invoke-interface {v14, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 787
    :cond_4
    invoke-virtual {v10}, Lorg/jets3t/service/model/StorageObject;->isMetadataComplete()Z

    move-result v18

    if-nez v18, :cond_2

    .line 792
    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 796
    .local v7, "filepath":Ljava/lang/String;
    if-nez v7, :cond_5

    invoke-virtual {v10}, Lorg/jets3t/service/model/StorageObject;->getContentLength()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_5

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, "d41d8cd98f00b204e9800998ecf8427e"

    invoke-virtual {v10}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 802
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "filepath":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 804
    .restart local v7    # "filepath":Ljava/lang/String;
    if-eqz v7, :cond_2

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 809
    :cond_5
    if-eqz v7, :cond_2

    .line 815
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 816
    .local v5, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 818
    .local v6, "fileHashAsHex":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 820
    const-string v6, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_3
    invoke-virtual {v10}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-virtual {v10}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 836
    :cond_6
    invoke-interface {v14, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 822
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v5, v11, v1}, Lorg/jets3t/service/utils/FileComparer;->generateFileMD5Hash(Ljava/io/File;Ljava/lang/String;Lorg/jets3t/service/io/BytesProgressWatcher;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/jets3t/service/utils/ServiceUtils;->toHex([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_3

    .line 825
    :catch_0
    move-exception v4

    .line 826
    .local v4, "e":Ljava/lang/Exception;
    new-instance v18, Lorg/jets3t/service/ServiceException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to generate MD5 hash for file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 839
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileHashAsHex":Ljava/lang/String;
    .end local v7    # "filepath":Ljava/lang/String;
    .end local v10    # "object":Lorg/jets3t/service/model/StorageObject;
    .end local v11    # "objectKey":Ljava/lang/String;
    :cond_8
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v18

    if-lez v18, :cond_0

    .line 841
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 843
    .local v13, "objectsCompleteList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/jets3t/service/ServiceException;

    move-object/from16 v16, v0

    .line 844
    .local v16, "serviceExceptions":[Lorg/jets3t/service/ServiceException;
    new-instance v17, Lorg/jets3t/service/multi/ThreadedStorageService;

    new-instance v18, Lorg/jets3t/service/utils/FileComparer$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v13, v2}, Lorg/jets3t/service/utils/FileComparer$3;-><init>(Lorg/jets3t/service/utils/FileComparer;Ljava/util/List;[Lorg/jets3t/service/ServiceException;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    .line 860
    .local v17, "threadedService":Lorg/jets3t/service/multi/ThreadedStorageService;
    if-eqz p9, :cond_9

    .line 861
    move-object/from16 v0, v17

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->addServiceEventListener(Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    .line 863
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Lorg/jets3t/service/model/StorageObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lorg/jets3t/service/model/StorageObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/multi/ThreadedStorageService;->getObjectsHeads(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z

    .line 865
    const/16 v18, 0x0

    aget-object v18, v16, v18

    if-eqz v18, :cond_a

    .line 866
    const/16 v18, 0x0

    aget-object v18, v16, v18

    throw v18

    .line 869
    :cond_a
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lorg/jets3t/service/model/StorageObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lorg/jets3t/service/model/StorageObject;

    .line 871
    .local v15, "objectsWithMetadata":[Lorg/jets3t/service/model/StorageObject;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Lorg/jets3t/service/utils/FileComparer;->populateObjectMap(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method protected normalizeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 290
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    .line 291
    .local v0, "form":Ljava/text/Normalizer$Form;
    invoke-static {p1, v0}, Ljava/text/Normalizer;->isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    .line 294
    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public populateObjectMap(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Ljava/util/Map;
    .locals 6
    .param p1, "targetPath"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/jets3t/service/model/StorageObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 887
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 888
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_4

    .line 889
    aget-object v4, p2, v0

    invoke-virtual {v4}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, "relativeKey":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 891
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 892
    sget-object v4, Lorg/jets3t/service/Constants;->FILE_PATH_DELIM:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 893
    .local v3, "slashIndex":I
    if-nez v3, :cond_2

    .line 894
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 909
    .end local v3    # "slashIndex":I
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 910
    invoke-virtual {p0, v2}, Lorg/jets3t/service/utils/FileComparer;->normalizeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v0

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 899
    .restart local v3    # "slashIndex":I
    :cond_2
    sget-object v4, Lorg/jets3t/service/Constants;->FILE_PATH_DELIM:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 900
    if-ltz v3, :cond_3

    .line 901
    aget-object v4, p2, v0

    invoke-virtual {v4}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 905
    :cond_3
    aget-object v4, p2, v0

    invoke-virtual {v4}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 913
    .end local v2    # "relativeKey":Ljava/lang/String;
    .end local v3    # "slashIndex":I
    :cond_4
    return-object v1
.end method
