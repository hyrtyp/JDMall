.class Lcom/jingdong/app/mall/home/slide/SlideScreen$3;
.super Ljava/lang/Object;
.source "SlideScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen;->setViewTitle(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

.field private final synthetic val$title:Ljava/lang/String;

.field private final synthetic val$titleTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$3;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$3;->val$titleTextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$3;->val$title:Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$3;->val$titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$3;->val$title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$3;->val$titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_0
    return-void
.end method
