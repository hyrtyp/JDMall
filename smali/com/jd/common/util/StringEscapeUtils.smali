.class public Lcom/jd/common/util/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# static fields
.field private static final ALPHA:Ljava/util/BitSet;

.field private static final ALPHANUM:Ljava/util/BitSet;

.field private static HEXADECIMAL:[I

.field private static final MARK:Ljava/util/BitSet;

.field private static final RESERVED:Ljava/util/BitSet;

.field private static final UNRESERVED:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 1016
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/jd/common/util/StringEscapeUtils;->ALPHA:Ljava/util/BitSet;

    .line 1019
    const/16 v0, 0x61

    .local v0, i:I
    :goto_0
    const/16 v1, 0x7a

    if-le v0, v1, :cond_0

    .line 1023
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 1029
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/jd/common/util/StringEscapeUtils;->ALPHANUM:Ljava/util/BitSet;

    .line 1032
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->ALPHANUM:Ljava/util/BitSet;

    sget-object v2, Lcom/jd/common/util/StringEscapeUtils;->ALPHA:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1034
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-le v0, v1, :cond_2

    .line 1040
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/jd/common/util/StringEscapeUtils;->MARK:Ljava/util/BitSet;

    .line 1043
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1044
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1045
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1046
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1047
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1048
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1049
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1050
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1051
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1055
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/jd/common/util/StringEscapeUtils;->RESERVED:Ljava/util/BitSet;

    .line 1058
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1059
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1060
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1061
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1062
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1063
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1064
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1065
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1066
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1067
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1071
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/jd/common/util/StringEscapeUtils;->UNRESERVED:Ljava/util/BitSet;

    .line 1074
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->UNRESERVED:Ljava/util/BitSet;

    sget-object v2, Lcom/jd/common/util/StringEscapeUtils;->ALPHANUM:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1075
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->UNRESERVED:Ljava/util/BitSet;

    sget-object v2, Lcom/jd/common/util/StringEscapeUtils;->MARK:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1079
    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/jd/common/util/StringEscapeUtils;->HEXADECIMAL:[I

    .line 13
    return-void

    .line 1020
    :cond_0
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->ALPHA:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1024
    :cond_1
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->ALPHA:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1035
    :cond_2
    sget-object v1, Lcom/jd/common/util/StringEscapeUtils;->ALPHANUM:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 1034
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1079
    :array_0
    .array-data 0x4
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeCombinedCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 592
    sget-object v0, Lcom/jd/common/util/Entities;->COMBINED_COOKIE:Lcom/jd/common/util/Entities;

    invoke-static {v0, p0}, Lcom/jd/common/util/StringEscapeUtils;->escapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "entities"
    .parameter "value"

    .prologue
    .line 673
    if-nez p1, :cond_1

    .line 674
    const/4 p1, 0x0

    .line 686
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 678
    .restart local p1
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 680
    .local v1, out:Ljava/io/StringWriter;
    invoke-static {p0, p1, v1}, Lcom/jd/common/util/StringEscapeUtils;->escapeEntitiesInternal(Lcom/jd/common/util/Entities;Ljava/lang/String;Ljava/io/Writer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 685
    .end local v1           #out:Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 686
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static escapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .parameter "entities"
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-static {p0, p1, p2}, Lcom/jd/common/util/StringEscapeUtils;->escapeEntitiesInternal(Lcom/jd/common/util/Entities;Ljava/lang/String;Ljava/io/Writer;)Z

    .line 701
    return-void
.end method

.method private static escapeEntitiesInternal(Lcom/jd/common/util/Entities;Ljava/lang/String;Ljava/io/Writer;)Z
    .locals 7
    .parameter "entities"
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    const/4 v3, 0x0

    .line 825
    .local v3, needChange:Z
    if-nez p0, :cond_0

    .line 826
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The Entities must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 829
    :cond_0
    if-nez p2, :cond_1

    .line 830
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The Writer must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 833
    :cond_1
    if-nez p1, :cond_2

    move v4, v3

    .line 853
    .end local v3           #needChange:Z
    .local v4, needChange:I
    :goto_0
    return v4

    .line 837
    .end local v4           #needChange:I
    .restart local v3       #needChange:Z
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v2, v5, :cond_3

    move v4, v3

    .line 853
    .restart local v4       #needChange:I
    goto :goto_0

    .line 838
    .end local v4           #needChange:I
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 839
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/jd/common/util/Entities;->getEntityName(I)Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, entityName:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 842
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 837
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 844
    :cond_4
    const/16 v5, 0x26

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(I)V

    .line 845
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 846
    const/16 v5, 0x3b

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(I)V

    .line 849
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public static escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 583
    sget-object v0, Lcom/jd/common/util/Entities;->HTML40:Lcom/jd/common/util/Entities;

    invoke-static {v0, p0}, Lcom/jd/common/util/StringEscapeUtils;->escapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeHtml(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    sget-object v0, Lcom/jd/common/util/Entities;->HTML40:Lcom/jd/common/util/Entities;

    invoke-static {v0, p0, p1}, Lcom/jd/common/util/StringEscapeUtils;->escapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;Ljava/io/Writer;)V

    .line 627
    return-void
.end method

.method public static escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-static {p0, v0, v0}, Lcom/jd/common/util/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeJava(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "strict"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/jd/common/util/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeJava(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-static {p0, v0, p1, v0}, Lcom/jd/common/util/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;ZLjava/io/Writer;Z)Z

    .line 73
    return-void
.end method

.method public static escapeJava(Ljava/lang/String;Ljava/io/Writer;Z)V
    .locals 1
    .parameter "value"
    .parameter "out"
    .parameter "strict"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/jd/common/util/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;ZLjava/io/Writer;Z)Z

    .line 95
    return-void
.end method

.method public static escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 113
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jd/common/util/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeJavaScript(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "strict"

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/jd/common/util/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeJavaScript(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 2
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/jd/common/util/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;ZLjava/io/Writer;Z)Z

    .line 155
    return-void
.end method

.method public static escapeJavaScript(Ljava/lang/String;Ljava/io/Writer;Z)V
    .locals 1
    .parameter "value"
    .parameter "out"
    .parameter "strict"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/jd/common/util/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;ZLjava/io/Writer;Z)Z

    .line 177
    return-void
.end method

.method private static escapeJavaStyleString(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "escapeSingleQuotes"
    .parameter "strict"

    .prologue
    .line 188
    if-nez p0, :cond_1

    .line 189
    const/4 p0, 0x0

    .line 201
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 193
    .restart local p0
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 195
    .local v1, out:Ljava/io/StringWriter;
    invoke-static {p0, p1, v1, p2}, Lcom/jd/common/util/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;ZLjava/io/Writer;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 200
    .end local v1           #out:Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private static escapeJavaStyleString(Ljava/lang/String;ZLjava/io/Writer;Z)Z
    .locals 8
    .parameter "value"
    .parameter "escapeSingleQuote"
    .parameter "out"
    .parameter "strict"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5c

    .line 216
    const/4 v3, 0x0

    .line 218
    .local v3, needToChange:Z
    if-nez p2, :cond_0

    .line 219
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The Writer must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 222
    :cond_0
    if-nez p0, :cond_1

    move v4, v3

    .line 318
    .end local v3           #needToChange:Z
    .local v4, needToChange:I
    :goto_0
    return v4

    .line 226
    .end local v4           #needToChange:I
    .restart local v3       #needToChange:Z
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 228
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_2

    move v4, v3

    .line 318
    .restart local v4       #needToChange:I
    goto :goto_0

    .line 229
    .end local v4           #needToChange:I
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 231
    .local v0, ch:C
    const/16 v5, 0x20

    if-ge v0, v5, :cond_4

    .line 232
    packed-switch v0, :pswitch_data_0

    .line 260
    :pswitch_0
    const/16 v5, 0xf

    if-le v0, v5, :cond_3

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\\u00"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 270
    :goto_2
    const/4 v3, 0x1

    .line 228
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    :pswitch_1
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    .line 235
    const/16 v5, 0x62

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 239
    :pswitch_2
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    .line 240
    const/16 v5, 0x6e

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 244
    :pswitch_3
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    .line 245
    const/16 v5, 0x74

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 249
    :pswitch_4
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    .line 250
    const/16 v5, 0x66

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 254
    :pswitch_5
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    .line 255
    const/16 v5, 0x72

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 263
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\\u000"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 271
    :cond_4
    if-eqz p3, :cond_6

    const/16 v5, 0xff

    if-le v0, v5, :cond_6

    .line 272
    const/16 v5, 0xfff

    if-le v0, v5, :cond_5

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\\u"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 279
    :goto_4
    const/4 v3, 0x1

    goto :goto_3

    .line 275
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\\u0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 281
    :cond_6
    sparse-switch v0, :sswitch_data_0

    .line 312
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_3

    .line 284
    :sswitch_0
    if-eqz p1, :cond_7

    .line 285
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    .line 288
    const/4 v3, 0x1

    .line 291
    :cond_7
    const/16 v5, 0x27

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_3

    .line 296
    :sswitch_1
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    .line 297
    const/16 v5, 0x22

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(I)V

    .line 300
    const/4 v3, 0x1

    .line 301
    goto/16 :goto_3

    .line 304
    :sswitch_2
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    .line 305
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(I)V

    .line 308
    const/4 v3, 0x1

    .line 309
    goto/16 :goto_3

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_0
        0x5c -> :sswitch_2
    .end sparse-switch
.end method

.method public static escapeSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 981
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeSql(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 3
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1007
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-static {p0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1012
    :cond_0
    return-void
.end method

.method public static escapeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 1105
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/jd/common/util/StringEscapeUtils;->escapeURLInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 1107
    .end local p0
    :goto_0
    return-object p0

    .line 1106
    .restart local p0
    :catch_0
    move-exception v0

    .line 1107
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public static escapeURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1135
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/jd/common/util/StringEscapeUtils;->escapeURLInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeURL(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "encoding"
    .parameter "strict"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1175
    invoke-static {p0, p1, p2}, Lcom/jd/common/util/StringEscapeUtils;->escapeURLInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeURL(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .parameter "value"
    .parameter "encoding"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1204
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/jd/common/util/StringEscapeUtils;->escapeURLInternal(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;Z)Z

    .line 1205
    return-void
.end method

.method public static escapeURL(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;Z)V
    .locals 0
    .parameter "value"
    .parameter "encoding"
    .parameter "out"
    .parameter "strict"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1246
    invoke-static {p0, p1, p2, p3}, Lcom/jd/common/util/StringEscapeUtils;->escapeURLInternal(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;Z)Z

    .line 1247
    return-void
.end method

.method private static escapeURLInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "encoding"
    .parameter "strict"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1260
    if-nez p0, :cond_1

    .line 1261
    const/4 p0, 0x0

    .line 1275
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1265
    .restart local p0
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 1267
    .local v1, out:Ljava/io/StringWriter;
    invoke-static {p0, p1, v1, p2}, Lcom/jd/common/util/StringEscapeUtils;->escapeURLInternal(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1268
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 1272
    .end local v1           #out:Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 1273
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    throw v0

    .line 1274
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 1275
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private static escapeURLInternal(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;Z)Z
    .locals 15
    .parameter "value"
    .parameter "encoding"
    .parameter "out"
    .parameter "strict"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1293
    if-nez p1, :cond_0

    .line 1294
    const-string v13, "file.encoding"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1297
    :cond_0
    const/4 v9, 0x0

    .line 1299
    .local v9, needToChange:Z
    if-nez p2, :cond_1

    .line 1300
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "The Writer must not be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1303
    :cond_1
    if-nez p0, :cond_2

    move v10, v9

    .line 1355
    .end local v9           #needToChange:Z
    .local v10, needToChange:I
    :goto_0
    return v10

    .line 1308
    .end local v10           #needToChange:I
    .restart local v9       #needToChange:Z
    :cond_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v13, 0xa

    invoke-direct {v1, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1309
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v12, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, p1

    invoke-direct {v12, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1311
    .local v12, writer:Ljava/io/OutputStreamWriter;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v6, v13, :cond_3

    move v10, v9

    .line 1355
    .restart local v10       #needToChange:I
    goto :goto_0

    .line 1312
    .end local v10           #needToChange:I
    :cond_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1314
    .local v3, ch:I
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/jd/common/util/StringEscapeUtils;->isSafeCharacter(IZ)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1316
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(I)V

    .line 1311
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1317
    :cond_4
    const/16 v13, 0x20

    if-ne v3, v13, :cond_5

    .line 1319
    const/16 v13, 0x2b

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(I)V

    .line 1322
    const/4 v9, 0x1

    goto :goto_2

    .line 1327
    :cond_5
    :try_start_0
    invoke-virtual {v12, v3}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 1328
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1336
    .local v2, bytes:[B
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    array-length v13, v2

    if-lt v7, v13, :cond_6

    .line 1348
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1351
    const/4 v9, 0x1

    goto :goto_2

    .line 1329
    .end local v2           #bytes:[B
    .end local v7           #j:I
    :catch_0
    move-exception v4

    .line 1330
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_2

    .line 1337
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #bytes:[B
    .restart local v7       #j:I
    :cond_6
    aget-byte v11, v2, v7

    .line 1339
    .local v11, toEscape:B
    const/16 v13, 0x25

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(I)V

    .line 1341
    and-int/lit8 v8, v11, 0xf

    .line 1342
    .local v8, low:I
    and-int/lit16 v13, v11, 0xf0

    shr-int/lit8 v5, v13, 0x4

    .line 1344
    .local v5, high:I
    sget-object v13, Lcom/jd/common/util/StringEscapeUtils;->HEXADECIMAL:[I

    aget v13, v13, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(I)V

    .line 1345
    sget-object v13, Lcom/jd/common/util/StringEscapeUtils;->HEXADECIMAL:[I

    aget v13, v13, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(I)V

    .line 1336
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 643
    sget-object v0, Lcom/jd/common/util/Entities;->XML:Lcom/jd/common/util/Entities;

    invoke-static {v0, p0}, Lcom/jd/common/util/StringEscapeUtils;->escapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeXml(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    sget-object v0, Lcom/jd/common/util/Entities;->XML:Lcom/jd/common/util/Entities;

    invoke-static {v0, p0, p1}, Lcom/jd/common/util/StringEscapeUtils;->escapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;Ljava/io/Writer;)V

    .line 663
    return-void
.end method

.method private static isSafeCharacter(IZ)Z
    .locals 1
    .parameter "ch"
    .parameter "strict"

    .prologue
    .line 1366
    if-eqz p1, :cond_0

    .line 1367
    sget-object v0, Lcom/jd/common/util/StringEscapeUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 1369
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    if-le p0, v0, :cond_1

    sget-object v0, Lcom/jd/common/util/StringEscapeUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unescapeCombinedCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 601
    sget-object v0, Lcom/jd/common/util/Entities;->COMBINED_COOKIE:Lcom/jd/common/util/Entities;

    invoke-static {v0, p0}, Lcom/jd/common/util/StringEscapeUtils;->unescapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "entities"
    .parameter "value"

    .prologue
    .line 779
    if-nez p1, :cond_1

    .line 780
    const/4 p1, 0x0

    .line 792
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 784
    .restart local p1
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 786
    .local v1, out:Ljava/io/StringWriter;
    invoke-static {p0, p1, v1}, Lcom/jd/common/util/StringEscapeUtils;->unescapeEntitiesInternal(Lcom/jd/common/util/Entities;Ljava/lang/String;Ljava/io/Writer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 791
    .end local v1           #out:Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 792
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static unescapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .parameter "entities"
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-static {p0, p1, p2}, Lcom/jd/common/util/StringEscapeUtils;->unescapeEntitiesInternal(Lcom/jd/common/util/Entities;Ljava/lang/String;Ljava/io/Writer;)Z

    .line 810
    return-void
.end method

.method private static unescapeEntitiesInternal(Lcom/jd/common/util/Entities;Ljava/lang/String;Ljava/io/Writer;)Z
    .locals 13
    .parameter "entities"
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    const/4 v7, 0x0

    .line 872
    .local v7, needToChange:Z
    if-nez p2, :cond_0

    .line 873
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "The Writer must not be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 876
    :cond_0
    if-nez p1, :cond_1

    move v8, v7

    .line 957
    .end local v7           #needToChange:Z
    .local v8, needToChange:I
    :goto_0
    return v8

    .line 880
    .end local v8           #needToChange:I
    .restart local v7       #needToChange:Z
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v6, v11, :cond_2

    move v8, v7

    .line 957
    .restart local v8       #needToChange:I
    goto :goto_0

    .line 881
    .end local v8           #needToChange:I
    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 883
    .local v0, ch:C
    const/16 v11, 0x26

    if-ne v0, v11, :cond_b

    .line 885
    const/16 v11, 0x3b

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 887
    .local v10, semi:I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v10, -0x1

    if-lt v11, v12, :cond_4

    .line 888
    :cond_3
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 880
    .end local v10           #semi:I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 893
    .restart local v10       #semi:I
    :cond_4
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x23

    if-ne v11, v12, :cond_8

    .line 894
    add-int/lit8 v5, v6, 0x2

    .line 895
    .local v5, firstCharIndex:I
    const/16 v9, 0xa

    .line 897
    .local v9, radix:I
    add-int/lit8 v11, v10, -0x1

    if-lt v5, v11, :cond_5

    .line 898
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 899
    const/16 v11, 0x23

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 900
    add-int/lit8 v6, v6, 0x1

    .line 901
    goto :goto_2

    .line 904
    :cond_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 906
    .local v4, firstChar:C
    const/16 v11, 0x78

    if-eq v4, v11, :cond_6

    const/16 v11, 0x58

    if-ne v4, v11, :cond_7

    .line 907
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 908
    const/16 v9, 0x10

    .line 910
    add-int/lit8 v11, v10, -0x1

    if-lt v5, v11, :cond_7

    .line 911
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 912
    const/16 v11, 0x23

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 913
    add-int/lit8 v6, v6, 0x1

    .line 914
    goto :goto_2

    .line 919
    :cond_7
    :try_start_0
    invoke-virtual {p1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 921
    .local v3, entityValue:I
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    const/4 v7, 0x1

    .line 951
    .end local v4           #firstChar:C
    .end local v5           #firstCharIndex:I
    .end local v9           #radix:I
    :goto_3
    move v6, v10

    goto :goto_2

    .line 925
    .end local v3           #entityValue:I
    .restart local v4       #firstChar:C
    .restart local v5       #firstCharIndex:I
    .restart local v9       #radix:I
    :catch_0
    move-exception v1

    .line 926
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 927
    const/16 v11, 0x23

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 928
    add-int/lit8 v6, v6, 0x1

    .line 929
    goto :goto_2

    .line 932
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v4           #firstChar:C
    .end local v5           #firstCharIndex:I
    .end local v9           #radix:I
    :cond_8
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 933
    .local v2, entityName:Ljava/lang/String;
    const/4 v3, -0x1

    .line 935
    .restart local v3       #entityValue:I
    if-eqz p0, :cond_9

    .line 936
    invoke-virtual {p0, v2}, Lcom/jd/common/util/Entities;->getEntityValue(Ljava/lang/String;)I

    move-result v3

    .line 939
    :cond_9
    const/4 v11, -0x1

    if-ne v3, v11, :cond_a

    .line 940
    const/16 v11, 0x26

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 941
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 942
    const/16 v11, 0x3b

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    .line 944
    :cond_a
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 947
    const/4 v7, 0x1

    goto :goto_3

    .line 953
    .end local v2           #entityName:Ljava/lang/String;
    .end local v3           #entityValue:I
    .end local v10           #semi:I
    :cond_b
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2
.end method

.method public static unescapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 716
    sget-object v0, Lcom/jd/common/util/Entities;->HTML40:Lcom/jd/common/util/Entities;

    invoke-static {v0, p0}, Lcom/jd/common/util/StringEscapeUtils;->unescapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeHtml(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    sget-object v0, Lcom/jd/common/util/Entities;->HTML40:Lcom/jd/common/util/Entities;

    invoke-static {v0, p0, p1}, Lcom/jd/common/util/StringEscapeUtils;->unescapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;Ljava/io/Writer;)V

    .line 735
    return-void
.end method

.method public static unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 334
    invoke-static {p0}, Lcom/jd/common/util/StringEscapeUtils;->unescapeJavaStyleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeJava(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {p0, p1}, Lcom/jd/common/util/StringEscapeUtils;->unescapeJavaStyleString(Ljava/lang/String;Ljava/io/Writer;)Z

    .line 353
    return-void
.end method

.method public static unescapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 368
    invoke-static {p0}, Lcom/jd/common/util/StringEscapeUtils;->unescapeJavaStyleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeJavaScript(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-static {p0, p1}, Lcom/jd/common/util/StringEscapeUtils;->unescapeJavaStyleString(Ljava/lang/String;Ljava/io/Writer;)Z

    .line 387
    return-void
.end method

.method private static unescapeJavaStyleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 402
    if-nez p0, :cond_1

    .line 403
    const/4 p0, 0x0

    .line 415
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 407
    .restart local p0
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 409
    .local v1, out:Ljava/io/StringWriter;
    invoke-static {p0, v1}, Lcom/jd/common/util/StringEscapeUtils;->unescapeJavaStyleString(Ljava/lang/String;Ljava/io/Writer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 414
    .end local v1           #out:Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private static unescapeJavaStyleString(Ljava/lang/String;Ljava/io/Writer;)Z
    .locals 13
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    const/4 v6, 0x0

    .line 437
    .local v6, needToChange:Z
    if-nez p1, :cond_0

    .line 438
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "The Writer must not be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 441
    :cond_0
    if-nez p0, :cond_1

    move v7, v6

    .line 560
    .end local v6           #needToChange:Z
    .local v7, needToChange:I
    :goto_0
    return v7

    .line 445
    .end local v7           #needToChange:I
    .restart local v6       #needToChange:Z
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 446
    .local v5, length:I
    new-instance v8, Ljava/lang/StringBuffer;

    const/4 v11, 0x4

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 447
    .local v8, unicode:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 448
    .local v2, hadSlash:Z
    const/4 v4, 0x0

    .line 450
    .local v4, inUnicode:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v5, :cond_3

    .line 556
    if-eqz v2, :cond_2

    .line 557
    const/16 v11, 0x5c

    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(I)V

    :cond_2
    move v7, v6

    .line 560
    .restart local v7       #needToChange:I
    goto :goto_0

    .line 451
    .end local v7           #needToChange:I
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 453
    .local v0, ch:C
    if-eqz v4, :cond_5

    .line 454
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 456
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    .line 457
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 460
    .local v9, unicodeStr:Ljava/lang/String;
    const/16 v11, 0x10

    :try_start_0
    invoke-static {v9, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 462
    .local v10, value1:I
    int-to-char v11, v10

    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(I)V

    .line 463
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    const/4 v4, 0x0

    .line 465
    const/4 v2, 0x0

    .line 468
    const/4 v6, 0x1

    .line 450
    .end local v9           #unicodeStr:Ljava/lang/String;
    .end local v10           #value1:I
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 469
    .restart local v9       #unicodeStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 470
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\\u"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 477
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v9           #unicodeStr:Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_6

    .line 478
    const/4 v2, 0x0

    .line 480
    sparse-switch v0, :sswitch_data_0

    .line 543
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 482
    :sswitch_0
    const/16 v11, 0x5c

    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(I)V

    .line 485
    const/4 v6, 0x1

    .line 486
    goto :goto_2

    .line 489
    :sswitch_1
    const/16 v11, 0x27

    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(I)V

    .line 492
    const/4 v6, 0x1

    .line 493
    goto :goto_2

    .line 496
    :sswitch_2
    const/16 v11, 0x22

    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(I)V

    .line 499
    const/4 v6, 0x1

    .line 500
    goto :goto_2

    .line 503
    :sswitch_3
    const/16 v11, 0xd

    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(I)V

    .line 506
    const/4 v6, 0x1

    .line 507
    goto :goto_2

    .line 510
    :sswitch_4
    const/16 v11, 0xc

    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(I)V

    .line 513
    const/4 v6, 0x1

    .line 514
    goto :goto_2

    .line 517
    :sswitch_5
    const/16 v11, 0x9

    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(I)V

    .line 520
    const/4 v6, 0x1

    .line 521
    goto :goto_2

    .line 524
    :sswitch_6
    const/16 v11, 0xa

    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(I)V

    .line 527
    const/4 v6, 0x1

    .line 528
    goto :goto_2

    .line 531
    :sswitch_7
    const/16 v11, 0x8

    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(I)V

    .line 534
    const/4 v6, 0x1

    .line 535
    goto :goto_2

    .line 538
    :sswitch_8
    const/4 v4, 0x1

    .line 539
    goto :goto_2

    .line 548
    :cond_6
    const/16 v11, 0x5c

    if-ne v0, v11, :cond_7

    .line 549
    const/4 v2, 0x1

    .line 550
    goto :goto_2

    .line 553
    :cond_7
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 480
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
        0x62 -> :sswitch_7
        0x66 -> :sswitch_4
        0x6e -> :sswitch_6
        0x72 -> :sswitch_3
        0x74 -> :sswitch_5
        0x75 -> :sswitch_8
    .end sparse-switch
.end method

.method public static unescapeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 1384
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/jd/common/util/StringEscapeUtils;->unescapeURLInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 1386
    .end local p0
    :goto_0
    return-object p0

    .line 1385
    .restart local p0
    :catch_0
    move-exception v0

    .line 1386
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public static unescapeURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1399
    invoke-static {p0, p1}, Lcom/jd/common/util/StringEscapeUtils;->unescapeURLInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeURL(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .parameter "value"
    .parameter "encoding"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1413
    invoke-static {p0, p1, p2}, Lcom/jd/common/util/StringEscapeUtils;->unescapeURLInternal(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Z

    .line 1414
    return-void
.end method

.method private static unescapeURLInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1425
    if-nez p0, :cond_1

    .line 1426
    const/4 p0, 0x0

    .line 1440
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1430
    .restart local p0
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 1432
    .local v1, out:Ljava/io/StringWriter;
    invoke-static {p0, p1, v1}, Lcom/jd/common/util/StringEscapeUtils;->unescapeURLInternal(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1433
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 1437
    .end local v1           #out:Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 1438
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    throw v0

    .line 1439
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 1440
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private static unescapeURLInternal(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Z
    .locals 11
    .parameter "value"
    .parameter "encoding"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1456
    if-nez p1, :cond_0

    .line 1457
    const-string v8, "file.encoding"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1460
    :cond_0
    const/4 v5, 0x0

    .line 1462
    .local v5, needChange:Z
    if-nez p2, :cond_1

    .line 1463
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The Writer must not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1466
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1467
    .local v4, length:I
    const/4 v0, 0x0

    check-cast v0, [B

    .line 1468
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 1470
    .local v6, pos:I
    const/4 v3, 0x0

    .local v3, i:I
    move v7, v6

    .end local v6           #pos:I
    .local v7, pos:I
    :goto_0
    if-lt v3, v4, :cond_2

    .line 1528
    if-lez v7, :cond_6

    .line 1529
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0, v10, v7, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1530
    const/4 v6, 0x0

    .line 1533
    .end local v7           #pos:I
    .restart local v6       #pos:I
    :goto_1
    return v5

    .line 1471
    .end local v6           #pos:I
    .restart local v7       #pos:I
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1473
    .local v1, ch:I
    const/16 v8, 0x100

    if-ge v1, v8, :cond_5

    .line 1475
    if-nez v0, :cond_3

    .line 1476
    sub-int v8, v4, v3

    new-array v0, v8, [B

    .line 1479
    :cond_3
    sparse-switch v1, :sswitch_data_0

    .line 1512
    add-int/lit8 v6, v7, 0x1

    .end local v7           #pos:I
    .restart local v6       #pos:I
    int-to-byte v8, v1

    aput-byte v8, v0, v7

    .line 1470
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v7, v6

    .end local v6           #pos:I
    .restart local v7       #pos:I
    goto :goto_0

    .line 1483
    :sswitch_0
    add-int/lit8 v6, v7, 0x1

    .end local v7           #pos:I
    .restart local v6       #pos:I
    const/16 v8, 0x20

    aput-byte v8, v0, v7

    .line 1486
    const/4 v5, 0x1

    .line 1487
    goto :goto_2

    .line 1491
    .end local v6           #pos:I
    .restart local v7       #pos:I
    :sswitch_1
    add-int/lit8 v8, v3, 0x2

    if-ge v8, v4, :cond_4

    .line 1493
    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v9, v3, 0x3

    :try_start_0
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1494
    add-int/lit8 v6, v7, 0x1

    .line 1495
    .end local v7           #pos:I
    .restart local v6       #pos:I
    add-int/lit8 v3, v3, 0x2

    .line 1498
    const/4 v5, 0x1

    goto :goto_2

    .line 1499
    .end local v6           #pos:I
    .restart local v7       #pos:I
    :catch_0
    move-exception v2

    .line 1501
    .local v2, e:Ljava/lang/NumberFormatException;
    add-int/lit8 v6, v7, 0x1

    .end local v7           #pos:I
    .restart local v6       #pos:I
    int-to-byte v8, v1

    aput-byte v8, v0, v7

    goto :goto_2

    .line 1504
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v6           #pos:I
    .restart local v7       #pos:I
    :cond_4
    add-int/lit8 v6, v7, 0x1

    .end local v7           #pos:I
    .restart local v6       #pos:I
    int-to-byte v8, v1

    aput-byte v8, v0, v7

    goto :goto_2

    .line 1517
    .end local v6           #pos:I
    .restart local v7       #pos:I
    :cond_5
    if-lez v7, :cond_7

    .line 1518
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0, v10, v7, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1519
    const/4 v6, 0x0

    .line 1523
    .end local v7           #pos:I
    .restart local v6       #pos:I
    :goto_3
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .end local v1           #ch:I
    .end local v6           #pos:I
    .restart local v7       #pos:I
    :cond_6
    move v6, v7

    .end local v7           #pos:I
    .restart local v6       #pos:I
    goto :goto_1

    .end local v6           #pos:I
    .restart local v1       #ch:I
    .restart local v7       #pos:I
    :cond_7
    move v6, v7

    .end local v7           #pos:I
    .restart local v6       #pos:I
    goto :goto_3

    .line 1479
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method public static unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 750
    sget-object v0, Lcom/jd/common/util/Entities;->XML:Lcom/jd/common/util/Entities;

    invoke-static {v0, p0}, Lcom/jd/common/util/StringEscapeUtils;->unescapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeXml(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .parameter "value"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 768
    sget-object v0, Lcom/jd/common/util/Entities;->XML:Lcom/jd/common/util/Entities;

    invoke-static {v0, p0, p1}, Lcom/jd/common/util/StringEscapeUtils;->unescapeEntities(Lcom/jd/common/util/Entities;Ljava/lang/String;Ljava/io/Writer;)V

    .line 769
    return-void
.end method
