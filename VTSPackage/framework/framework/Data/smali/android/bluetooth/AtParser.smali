.class public Landroid/bluetooth/AtParser;
.super Ljava/lang/Object;
.source "AtParser.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ATParser"

.field private static final MTKATCIRIL_PATTERN:Ljava/lang/String; = "+MTKATCIJ"

.field private static final TYPE_ACTION:I = 0x0

.field private static final TYPE_READ:I = 0x1

.field private static final TYPE_SET:I = 0x2

.field private static final TYPE_TEST:I = 0x3


# instance fields
.field private mBasicHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/bluetooth/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mExtHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    .local v3, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 149
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 150
    .local v0, "c":C
    if-ne v0, v5, :cond_3

    .line 151
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 152
    .local v2, "j":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .end local v0    # "c":C
    .end local v2    # "j":I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 157
    .restart local v0    # "c":C
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    move v1, v2

    .line 148
    .end local v2    # "j":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_3
    const/16 v4, 0x20

    if-eq v0, v4, :cond_2

    .line 160
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static findChar(CLjava/lang/String;I)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    const/16 v3, 0x22

    .line 176
    move v1, p2

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    .local v0, "c":C
    if-ne v0, v3, :cond_0

    .line 179
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 180
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 187
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 183
    .restart local v0    # "c":C
    :cond_0
    if-ne v0, p0, :cond_1

    move v2, v1

    .line 184
    goto :goto_1

    .line 176
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method private static findEndExtendedName(Ljava/lang/String;I)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 220
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 221
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 225
    .local v0, "c":C
    invoke-static {v0}, Landroid/bluetooth/AtParser;->isAtoZ(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    :cond_0
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_0

    .line 227
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 240
    .end local v0    # "c":C
    .end local v1    # "i":I
    :goto_1
    return v1

    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 227
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private static generateArgs(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v2, 0x0

    .line 198
    .local v2, "i":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v2, v5, :cond_0

    .line 200
    const/16 v5, 0x2c

    invoke-static {v5, p0, v2}, Landroid/bluetooth/AtParser;->findChar(CLjava/lang/String;I)I

    move-result v3

    .line 202
    .local v3, "j":I
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "arg":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .line 210
    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "j":I
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private static isAtoZ(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 168
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public process(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 22
    .param p1, "raw_input"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static/range {p1 .. p1}, Landroid/bluetooth/AtParser;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 255
    .local v12, "input":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "A/"

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 256
    new-instance v12, Ljava/lang/String;

    .end local v12    # "input":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v12    # "input":Ljava/lang/String;
    :goto_0
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 264
    new-instance v14, Landroid/bluetooth/AtCommandResult;

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 437
    :cond_0
    :goto_1
    return-object v14

    .line 258
    :cond_1
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    goto :goto_0

    .line 268
    :cond_2
    const/16 v18, 0x0

    const-string v19, "AT"

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_3

    .line 270
    const-string v18, "ATParser"

    const-string v19, "ERROR, No \'AT\' prefix."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v14, Landroid/bluetooth/AtCommandResult;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 275
    :cond_3
    const/4 v11, 0x2

    .line 276
    .local v11, "index":I
    new-instance v14, Landroid/bluetooth/AtCommandResult;

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 278
    .local v14, "result":Landroid/bluetooth/AtCommandResult;
    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_0

    .line 279
    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 281
    .local v5, "c":C
    invoke-static {v5}, Landroid/bluetooth/AtParser;->isAtoZ(C)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 285
    add-int/lit8 v18, v11, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "args":Ljava/lang/String;
    const-string v18, "ATParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Basic Command:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/AtCommandHandler;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandHandler;->handleBasicCommand(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_1

    .line 293
    :cond_4
    const-string v18, "ATParser"

    const-string v19, "ERROR, No Basic Command"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_1

    .line 301
    .end local v4    # "args":Ljava/lang/String;
    :cond_5
    const/16 v18, 0x2b

    move/from16 v0, v18

    if-eq v5, v0, :cond_6

    const/16 v18, 0x25

    move/from16 v0, v18

    if-ne v5, v0, :cond_16

    .line 305
    :cond_6
    add-int/lit8 v18, v11, 0x1

    move/from16 v0, v18

    invoke-static {v12, v0}, Landroid/bluetooth/AtParser;->findEndExtendedName(Ljava/lang/String;I)I

    move-result v10

    .line 306
    .local v10, "i":I
    invoke-virtual {v12, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, "commandName":Ljava/lang/String;
    const-string v18, "ATParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mExtHandlers cmd ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 311
    const-string v18, "ATParser"

    const-string v19, "ERROR, No command name in ExtHandler."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_1

    .line 316
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/AtCommandHandler;

    .line 320
    .local v9, "handler":Landroid/bluetooth/AtCommandHandler;
    const/16 v18, 0x3b

    move/from16 v0, v18

    invoke-static {v0, v12, v11}, Landroid/bluetooth/AtParser;->findChar(CLjava/lang/String;I)I

    move-result v8

    .line 321
    .local v8, "endIndex":I
    const-string v18, "ATParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "endIndex="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v4, 0x0

    .line 328
    .local v4, "args":[Ljava/lang/Object;
    if-lt v10, v8, :cond_9

    .line 329
    const/16 v17, 0x0

    .line 347
    .local v17, "type":I
    :goto_3
    packed-switch v17, :pswitch_data_0

    .line 414
    :goto_4
    const-string v18, "ATParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mExtHandlers,resultCode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Landroid/bluetooth/AtCommandResult;->getResultCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",length="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v14}, Landroid/bluetooth/AtCommandResult;->getResultCode()I

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v14}, Landroid/bluetooth/AtCommandResult;->getResultCode()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 418
    :cond_8
    invoke-virtual {v14}, Landroid/bluetooth/AtCommandResult;->getResultCode()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 419
    add-int/lit8 v18, v8, 0x1

    const-string v19, "AT"

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 420
    const-string v18, "ATParser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "regionMatches matches another RILESP."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v8, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    add-int/lit8 v18, v8, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 422
    const/4 v11, 0x2

    goto/16 :goto_2

    .line 330
    .end local v17    # "type":I
    :cond_9
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 331
    const/16 v17, 0x1

    .restart local v17    # "type":I
    goto/16 :goto_3

    .line 332
    .end local v17    # "type":I
    :cond_a
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 333
    add-int/lit8 v18, v10, 0x1

    move/from16 v0, v18

    if-ge v0, v8, :cond_c

    .line 334
    add-int/lit8 v18, v10, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 335
    const/16 v17, 0x3

    .restart local v17    # "type":I
    goto/16 :goto_3

    .line 337
    .end local v17    # "type":I
    :cond_b
    const/16 v17, 0x2

    .restart local v17    # "type":I
    goto/16 :goto_3

    .line 340
    .end local v17    # "type":I
    :cond_c
    const/16 v17, 0x2

    .restart local v17    # "type":I
    goto/16 :goto_3

    .line 343
    .end local v17    # "type":I
    :cond_d
    const/16 v17, 0x0

    .restart local v17    # "type":I
    goto/16 :goto_3

    .line 349
    :pswitch_0
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleActionCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_4

    .line 352
    :pswitch_1
    add-int/lit8 v18, v10, 0x1

    move/from16 v0, v18

    if-ge v0, v8, :cond_f

    .line 354
    add-int/lit8 v18, v10, 0x1

    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 355
    .local v16, "subStr":Ljava/lang/String;
    const-string v18, "+MTKATCIJ"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v10

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 356
    .local v15, "rspStr":Ljava/lang/String;
    const-string v18, "+MTKATCIJ"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 357
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v4, v0, [Ljava/lang/String;

    .line 358
    const/16 v18, 0x0

    aput-object v15, v4, v18

    .line 359
    invoke-virtual {v9, v4}, Landroid/bluetooth/AtCommandHandler;->handleReadCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 363
    .end local v15    # "rspStr":Ljava/lang/String;
    .end local v16    # "subStr":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 364
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleReadCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_4

    .line 361
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v15    # "rspStr":Ljava/lang/String;
    .restart local v16    # "subStr":Ljava/lang/String;
    :cond_e
    :try_start_1
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleReadCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 367
    .end local v15    # "rspStr":Ljava/lang/String;
    .end local v16    # "subStr":Ljava/lang/String;
    :cond_f
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleReadCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_4

    .line 371
    :pswitch_2
    add-int/lit8 v18, v10, 0x2

    move/from16 v0, v18

    if-ge v0, v8, :cond_11

    .line 373
    add-int/lit8 v18, v10, 0x2

    :try_start_2
    move/from16 v0, v18

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 374
    .restart local v16    # "subStr":Ljava/lang/String;
    const-string v18, "+MTKATCIJ"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v10

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 375
    .restart local v15    # "rspStr":Ljava/lang/String;
    const-string v18, "+MTKATCIJ"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 376
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v4, v0, [Ljava/lang/String;

    .line 377
    const/16 v18, 0x0

    aput-object v15, v4, v18

    .line 378
    invoke-virtual {v9, v4}, Landroid/bluetooth/AtCommandHandler;->handleTestCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 382
    .end local v15    # "rspStr":Ljava/lang/String;
    .end local v16    # "subStr":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 383
    .restart local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleTestCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_4

    .line 380
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v15    # "rspStr":Ljava/lang/String;
    .restart local v16    # "subStr":Ljava/lang/String;
    :cond_10
    :try_start_3
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleTestCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 386
    .end local v15    # "rspStr":Ljava/lang/String;
    .end local v16    # "subStr":Ljava/lang/String;
    :cond_11
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleTestCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_4

    .line 390
    :pswitch_3
    const/4 v13, 0x0

    .line 391
    .local v13, "isGenerateArgs":I
    add-int/lit8 v18, v10, 0x1

    move/from16 v0, v18

    if-ge v0, v8, :cond_13

    .line 392
    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    .line 393
    .restart local v16    # "subStr":Ljava/lang/String;
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15}, Ljava/lang/String;-><init>()V

    .line 395
    .restart local v15    # "rspStr":Ljava/lang/String;
    add-int/lit8 v18, v10, 0x1

    :try_start_4
    move/from16 v0, v18

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 396
    const-string v18, "+MTKATCIJ"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v10

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v15

    .line 402
    :goto_5
    if-nez v13, :cond_12

    const-string v18, "+MTKATCIJ"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 403
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v4, v0, [Ljava/lang/String;

    .line 404
    const/16 v18, 0x0

    aput-object v15, v4, v18

    .line 411
    .end local v15    # "rspStr":Ljava/lang/String;
    .end local v16    # "subStr":Ljava/lang/String;
    :goto_6
    invoke-virtual {v9, v4}, Landroid/bluetooth/AtCommandHandler;->handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_4

    .line 397
    .restart local v15    # "rspStr":Ljava/lang/String;
    .restart local v16    # "subStr":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 398
    .restart local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v18, "ATParser"

    const-string v19, "IndexOutOfBoundsException: treat as normal mmi command."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v13, 0x1

    goto :goto_5

    .line 406
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_12
    add-int/lit8 v18, v10, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/bluetooth/AtParser;->generateArgs(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_6

    .line 409
    .end local v15    # "rspStr":Ljava/lang/String;
    .end local v16    # "subStr":Ljava/lang/String;
    :cond_13
    add-int/lit8 v18, v10, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/bluetooth/AtParser;->generateArgs(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_6

    .line 424
    .end local v13    # "isGenerateArgs":I
    :cond_14
    const-string v18, "ATParser"

    const-string/jumbo v19, "regionMatches: No other RILESP matche."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 428
    :cond_15
    move v11, v8

    goto/16 :goto_2

    .line 433
    .end local v4    # "args":[Ljava/lang/Object;
    .end local v6    # "commandName":Ljava/lang/String;
    .end local v8    # "endIndex":I
    .end local v9    # "handler":Landroid/bluetooth/AtCommandHandler;
    .end local v10    # "i":I
    .end local v17    # "type":I
    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Character;
    .param p2, "handler"    # Landroid/bluetooth/AtCommandHandler;

    .prologue
    .line 120
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/bluetooth/AtCommandHandler;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method
