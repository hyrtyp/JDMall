.class public Lcom/drew/metadata/exif/DataFormat;
.super Ljava/lang/Object;
.source "DataFormat.java"


# static fields
.field public static final BYTE:Lcom/drew/metadata/exif/DataFormat;

.field public static final DOUBLE:Lcom/drew/metadata/exif/DataFormat;

.field public static final SBYTE:Lcom/drew/metadata/exif/DataFormat;

.field public static final SINGLE:Lcom/drew/metadata/exif/DataFormat;

.field public static final SLONG:Lcom/drew/metadata/exif/DataFormat;

.field public static final SRATIONAL:Lcom/drew/metadata/exif/DataFormat;

.field public static final SSHORT:Lcom/drew/metadata/exif/DataFormat;

.field public static final STRING:Lcom/drew/metadata/exif/DataFormat;

.field public static final ULONG:Lcom/drew/metadata/exif/DataFormat;

.field public static final UNDEFINED:Lcom/drew/metadata/exif/DataFormat;

.field public static final URATIONAL:Lcom/drew/metadata/exif/DataFormat;

.field public static final USHORT:Lcom/drew/metadata/exif/DataFormat;


# instance fields
.field private final myName:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/drew/metadata/exif/DataFormat;

    const-string v1, "BYTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/exif/DataFormat;->BYTE:Lcom/drew/metadata/exif/DataFormat;

    .line 25
    new-instance v0, Lcom/drew/metadata/exif/DataFormat;

    const-string v1, "STRING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/exif/DataFormat;->STRING:Lcom/drew/metadata/exif/DataFormat;

    .line 26
    new-instance v0, Lcom/drew/metadata/exif/DataFormat;

    const-string v1, "USHORT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/exif/DataFormat;->USHORT:Lcom/drew/metadata/exif/DataFormat;

    .line 27
    new-instance v0, Lcom/drew/metadata/exif/DataFormat;

    const-string v1, "ULONG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/exif/DataFormat;->ULONG:Lcom/drew/metadata/exif/DataFormat;

    .line 28
    new-instance v0, Lcom/drew/metadata/exif/DataFormat;

    const-string v1, "URATIONAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/exif/DataFormat;->URATIONAL:Lcom/drew/metadata/exif/DataFormat;

    .line 29
    new-instance v0, Lcom/drew/metadata/exif/DataFormat;

    const-string v1, "SBYTE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/exif/DataFormat;->SBYTE:Lcom/drew/metadata/exif/DataFormat;

    .line 30
    new-instance v0, Lcom/drew/metadata/exif/DataFormat;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/exif/DataFormat;->UNDEFINED:Lcom/drew/metadata/exif/DataFormat;

    .line 31
    new-instance v0, Lcom/drew/metadata/exif/DataFormat;

    const-string v1, "SSHORT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/exif/DataFormat;->SSHORT:Lcom/drew/metadata/exif/DataFormat;

    .line 32
    new-instance v0, Lcom/drew/metadata/exif/DataFormat;

    const-string v1, "SLONG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/exif/DataFormat;->SLONG:Lcom/drew/metadata/exif/DataFormat;

    .line 33
    new-instance v0, Lcom/drew/metadata/exif/DataFormat;

    const-string v1, "SRATIONAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/exif/DataFormat;->SRATIONAL:Lcom/drew/metadata/exif/DataFormat;

    .line 34
    new-instance v0, Lcom/drew/metadata/exif/DataFormat;

    const-string v1, "SINGLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/exif/DataFormat;->SINGLE:Lcom/drew/metadata/exif/DataFormat;

    .line 35
    new-instance v0, Lcom/drew/metadata/exif/DataFormat;

    const-string v1, "DOUBLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/drew/metadata/exif/DataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/drew/metadata/exif/DataFormat;->DOUBLE:Lcom/drew/metadata/exif/DataFormat;

    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/drew/metadata/exif/DataFormat;->myName:Ljava/lang/String;

    .line 64
    iput p2, p0, Lcom/drew/metadata/exif/DataFormat;->value:I

    .line 65
    return-void
.end method

.method public static fromValue(I)Lcom/drew/metadata/exif/DataFormat;
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 42
    packed-switch p0, :pswitch_data_0

    .line 58
    new-instance v0, Lcom/drew/metadata/MetadataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not represent a known data format."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_0
    sget-object v0, Lcom/drew/metadata/exif/DataFormat;->BYTE:Lcom/drew/metadata/exif/DataFormat;

    .line 55
    :goto_0
    return-object v0

    .line 45
    :pswitch_1
    sget-object v0, Lcom/drew/metadata/exif/DataFormat;->STRING:Lcom/drew/metadata/exif/DataFormat;

    goto :goto_0

    .line 46
    :pswitch_2
    sget-object v0, Lcom/drew/metadata/exif/DataFormat;->USHORT:Lcom/drew/metadata/exif/DataFormat;

    goto :goto_0

    .line 47
    :pswitch_3
    sget-object v0, Lcom/drew/metadata/exif/DataFormat;->ULONG:Lcom/drew/metadata/exif/DataFormat;

    goto :goto_0

    .line 48
    :pswitch_4
    sget-object v0, Lcom/drew/metadata/exif/DataFormat;->URATIONAL:Lcom/drew/metadata/exif/DataFormat;

    goto :goto_0

    .line 49
    :pswitch_5
    sget-object v0, Lcom/drew/metadata/exif/DataFormat;->SBYTE:Lcom/drew/metadata/exif/DataFormat;

    goto :goto_0

    .line 50
    :pswitch_6
    sget-object v0, Lcom/drew/metadata/exif/DataFormat;->UNDEFINED:Lcom/drew/metadata/exif/DataFormat;

    goto :goto_0

    .line 51
    :pswitch_7
    sget-object v0, Lcom/drew/metadata/exif/DataFormat;->SSHORT:Lcom/drew/metadata/exif/DataFormat;

    goto :goto_0

    .line 52
    :pswitch_8
    sget-object v0, Lcom/drew/metadata/exif/DataFormat;->SLONG:Lcom/drew/metadata/exif/DataFormat;

    goto :goto_0

    .line 53
    :pswitch_9
    sget-object v0, Lcom/drew/metadata/exif/DataFormat;->SRATIONAL:Lcom/drew/metadata/exif/DataFormat;

    goto :goto_0

    .line 54
    :pswitch_a
    sget-object v0, Lcom/drew/metadata/exif/DataFormat;->SINGLE:Lcom/drew/metadata/exif/DataFormat;

    goto :goto_0

    .line 55
    :pswitch_b
    sget-object v0, Lcom/drew/metadata/exif/DataFormat;->DOUBLE:Lcom/drew/metadata/exif/DataFormat;

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/drew/metadata/exif/DataFormat;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/drew/metadata/exif/DataFormat;->myName:Ljava/lang/String;

    return-object v0
.end method
