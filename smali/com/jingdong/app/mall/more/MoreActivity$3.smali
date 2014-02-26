.class Lcom/jingdong/app/mall/more/MoreActivity$3;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/MoreActivity;->addContentList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/MoreActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/MoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/MoreActivity$3;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 604
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity$3;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity;->menu_paper_RelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/MoreActivity;->access$11(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity$3;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    #getter for: Lcom/jingdong/app/mall/more/MoreActivity;->paperDivoderView:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/MoreActivity;->access$12(Lcom/jingdong/app/mall/more/MoreActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 606
    return-void
.end method
