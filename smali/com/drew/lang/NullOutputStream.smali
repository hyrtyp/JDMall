.class public Lcom/drew/lang/NullOutputStream;
.super Ljava/io/OutputStream;
.source "NullOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    return-void
.end method
