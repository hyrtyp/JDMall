.class Lcom/jingdong/app/mall/home/slide/SlideScreen$2;
.super Ljava/lang/Object;
.source "SlideScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen;->setHotSalesTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$2;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$2;->val$title:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$2;->val$title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$2;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->listHeadContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$9(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f0c0611

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    .local v0, hotSalesTitle:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$2;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .end local v0           #hotSalesTitle:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
