.class public Lcom/jd/droidlib/inner/ann/inject/InjectAnn;
.super Lcom/jd/droidlib/inner/ann/Ann;
.source "InjectAnn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lcom/jd/droidlib/inner/ann/Ann",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/jd/droidlib/inner/ann/inject/InjectAnn;,"Lcom/jd/droidlib/inner/ann/inject/InjectAnn<TT;>;"
    .local p1, annotation:Ljava/lang/annotation/Annotation;,"TT;"
    invoke-direct {p0, p1}, Lcom/jd/droidlib/inner/ann/Ann;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 26
    return-void
.end method
