.class public abstract Lcom/drew/metadata/TagDescriptor;
.super Ljava/lang/Object;
.source "TagDescriptor.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final _directory:Lcom/drew/metadata/Directory;


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Directory;)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/drew/metadata/TagDescriptor;->_directory:Lcom/drew/metadata/Directory;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract getDescription(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation
.end method
