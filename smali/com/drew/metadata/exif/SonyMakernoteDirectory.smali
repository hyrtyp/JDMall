.class public Lcom/drew/metadata/exif/SonyMakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "SonyMakernoteDirectory.java"


# static fields
.field protected static final _tagNameMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/SonyMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "Sony Makernote"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/drew/metadata/exif/SonyMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
