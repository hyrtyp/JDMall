.class public Lcom/jingdong/common/utils/FileService$Directory;
.super Ljava/lang/Object;
.source "FileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/FileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directory"
.end annotation


# static fields
.field public static final EXTERNAL:I = 0x2

.field public static final INTERNAL:I = 0x1


# instance fields
.field private dir:Ljava/io/File;

.field private path:Ljava/lang/String;

.field private space:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 0
    .parameter "dir"
    .parameter "space"

    .prologue
    .line 1163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    iput-object p1, p0, Lcom/jingdong/common/utils/FileService$Directory;->dir:Ljava/io/File;

    .line 1165
    iput p2, p0, Lcom/jingdong/common/utils/FileService$Directory;->space:I

    .line 1166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "path"
    .parameter "space"

    .prologue
    .line 1160
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/jingdong/common/utils/FileService$Directory;-><init>(Ljava/io/File;I)V

    .line 1161
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/FileService$Directory;)I
    .locals 1
    .parameter

    .prologue
    .line 1157
    iget v0, p0, Lcom/jingdong/common/utils/FileService$Directory;->space:I

    return v0
.end method


# virtual methods
.method public checkExists()V
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$Directory;->dir:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$Directory;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$Directory;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1175
    :cond_0
    return-void
.end method

.method public getDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$Directory;->dir:Ljava/io/File;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$Directory;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$Directory;->dir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$Directory;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/utils/FileService$Directory;->path:Ljava/lang/String;

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/FileService$Directory;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSpace()I
    .locals 1

    .prologue
    .line 1186
    iget v0, p0, Lcom/jingdong/common/utils/FileService$Directory;->space:I

    return v0
.end method

.method public setDir(Ljava/io/File;)V
    .locals 0
    .parameter "dir"

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/jingdong/common/utils/FileService$Directory;->dir:Ljava/io/File;

    .line 1183
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1201
    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileService$Directory;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jingdong/common/utils/FileService$Directory;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1202
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/FileService$Directory;->dir:Ljava/io/File;

    .line 1203
    iput-object p1, p0, Lcom/jingdong/common/utils/FileService$Directory;->path:Ljava/lang/String;

    .line 1205
    :cond_1
    return-void
.end method

.method public setSpace(I)V
    .locals 0
    .parameter "space"

    .prologue
    .line 1190
    iput p1, p0, Lcom/jingdong/common/utils/FileService$Directory;->space:I

    .line 1191
    return-void
.end method
