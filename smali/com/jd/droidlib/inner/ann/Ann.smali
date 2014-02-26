.class public abstract Lcom/jd/droidlib/inner/ann/Ann;
.super Ljava/lang/Object;
.source "Ann.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final CLICK:Ljava/lang/String; = "click"

.field protected static final EAGER:Ljava/lang/String; = "eager"

.field protected static final ID:Ljava/lang/String; = "id"

.field protected static final KEY:Ljava/lang/String; = "key"

.field protected static final NAME:Ljava/lang/String; = "name"

.field protected static final NULLABLE:Ljava/lang/String; = "nullable"

.field protected static final OPTIONAL:Ljava/lang/String; = "optional"

.field protected static final UNIQUE:Ljava/lang/String; = "unique"

.field protected static final VALUE:Ljava/lang/String; = "value"

.field private static hackSuccess:Z


# instance fields
.field private elements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jd/droidlib/inner/ann/Ann;->hackSuccess:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<TT;>;"
    .local p1, annotation:Ljava/lang/annotation/Annotation;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-boolean v1, Lcom/jd/droidlib/inner/ann/Ann;->hackSuccess:Z

    if-eqz v1, :cond_0

    .line 43
    :try_start_0
    invoke-static {p1}, Lcom/jd/droidlib/inner/AnnotationElementsReader;->getElements(Ljava/lang/annotation/Annotation;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/jd/droidlib/inner/ann/Ann;->elements:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    .line 46
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jd/droidlib/inner/ann/Ann;->hackSuccess:Z

    goto :goto_0
.end method


# virtual methods
.method protected final cleanup()V
    .locals 1

    .prologue
    .line 60
    .local p0, this:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jd/droidlib/inner/ann/Ann;->elements:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.method protected final getElement(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 56
    .local p0, this:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<TT;>;"
    iget-object v0, p0, Lcom/jd/droidlib/inner/ann/Ann;->elements:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final hackSuccess()Z
    .locals 1

    .prologue
    .line 52
    .local p0, this:Lcom/jd/droidlib/inner/ann/Ann;,"Lcom/jd/droidlib/inner/ann/Ann<TT;>;"
    sget-boolean v0, Lcom/jd/droidlib/inner/ann/Ann;->hackSuccess:Z

    return v0
.end method
