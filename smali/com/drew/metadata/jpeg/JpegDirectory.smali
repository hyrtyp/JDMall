.class public Lcom/drew/metadata/jpeg/JpegDirectory;
.super Lcom/drew/metadata/Directory;
.source "JpegDirectory.java"


# static fields
.field public static final TAG_JPEG_COMPONENT_DATA_1:I = 0x6

.field public static final TAG_JPEG_COMPONENT_DATA_2:I = 0x7

.field public static final TAG_JPEG_COMPONENT_DATA_3:I = 0x8

.field public static final TAG_JPEG_COMPONENT_DATA_4:I = 0x9

.field public static final TAG_JPEG_DATA_PRECISION:I = 0x0

.field public static final TAG_JPEG_IMAGE_HEIGHT:I = 0x1

.field public static final TAG_JPEG_IMAGE_WIDTH:I = 0x3

.field public static final TAG_JPEG_NUMBER_OF_COMPONENTS:I = 0x5

.field protected static final tagNameMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/jpeg/JpegDirectory;->tagNameMap:Ljava/util/HashMap;

    .line 60
    sget-object v0, Lcom/drew/metadata/jpeg/JpegDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Data Precision"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/drew/metadata/jpeg/JpegDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Image Width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/drew/metadata/jpeg/JpegDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Image Height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/drew/metadata/jpeg/JpegDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Number of Components"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/drew/metadata/jpeg/JpegDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Component 1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/drew/metadata/jpeg/JpegDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Component 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/drew/metadata/jpeg/JpegDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Component 3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/drew/metadata/jpeg/JpegDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Component 4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 71
    new-instance v0, Lcom/drew/metadata/jpeg/JpegDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/jpeg/JpegDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getComponent(I)Lcom/drew/metadata/jpeg/JpegComponent;
    .locals 2
    .parameter "componentNumber"

    .prologue
    .line 90
    add-int/lit8 v1, p1, 0x6

    .line 92
    .local v1, tagType:I
    invoke-virtual {p0, v1}, Lcom/drew/metadata/jpeg/JpegDirectory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/jpeg/JpegComponent;

    .line 94
    .local v0, component:Lcom/drew/metadata/jpeg/JpegComponent;
    return-object v0
.end method

.method public getImageHeight()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegDirectory;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getImageWidth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegDirectory;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "Jpeg"

    return-object v0
.end method

.method public getNumberOfComponents()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegDirectory;->getInt(I)I

    move-result v0

    return v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/drew/metadata/jpeg/JpegDirectory;->tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
