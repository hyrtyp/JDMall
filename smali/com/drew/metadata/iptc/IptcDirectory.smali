.class public Lcom/drew/metadata/iptc/IptcDirectory;
.super Lcom/drew/metadata/Directory;
.source "IptcDirectory.java"


# static fields
.field public static final TAG_BY_LINE:I = 0x250

.field public static final TAG_BY_LINE_TITLE:I = 0x255

.field public static final TAG_CAPTION:I = 0x278

.field public static final TAG_CATEGORY:I = 0x20f

.field public static final TAG_CITY:I = 0x25a

.field public static final TAG_COPYRIGHT_NOTICE:I = 0x274

.field public static final TAG_COUNTRY_OR_PRIMARY_LOCATION:I = 0x265

.field public static final TAG_CREDIT:I = 0x26e

.field public static final TAG_DATE_CREATED:I = 0x237

.field public static final TAG_HEADLINE:I = 0x269

.field public static final TAG_KEYWORDS:I = 0x219

.field public static final TAG_OBJECT_NAME:I = 0x205

.field public static final TAG_ORIGINAL_TRANSMISSION_REFERENCE:I = 0x267

.field public static final TAG_ORIGINATING_PROGRAM:I = 0x241

.field public static final TAG_PROVINCE_OR_STATE:I = 0x25f

.field public static final TAG_RECORD_VERSION:I = 0x200

.field public static final TAG_RELEASE_DATE:I = 0x21e

.field public static final TAG_RELEASE_TIME:I = 0x223

.field public static final TAG_SOURCE:I = 0x273

.field public static final TAG_SPECIAL_INSTRUCTIONS:I = 0x228

.field public static final TAG_SUPPLEMENTAL_CATEGORIES:I = 0x214

.field public static final TAG_TIME_CREATED:I = 0x23c

.field public static final TAG_URGENCY:I = 0x20a

.field public static final TAG_WRITER:I = 0x27a

.field protected static final tagNameMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    .line 57
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Directory Version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x278

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Caption/Abstract"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x27a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Writer/Editor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x269

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Headline"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x228

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Special Instructions"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x250

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "By-line"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x255

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "By-line Title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x26e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Credit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x273

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x205

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Object Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x237

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Date Created"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x25a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "City"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x25f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Province/State"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x265

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Country/Primary Location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x267

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Original Transmission Reference"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x20f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Category"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x214

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Supplemental Category(s)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x20a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Urgency"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x219

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Keywords"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x274

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Copyright Notice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x21e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Release Date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x223

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Release Time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x23c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Time Created"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x241

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Originating Program"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 85
    new-instance v0, Lcom/drew/metadata/iptc/IptcDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/iptc/IptcDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 86
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "Iptc"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/drew/metadata/iptc/IptcDirectory;->tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
