.class Lcom/jingdong/app/mall/home/NewHomeActivity$3;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/GlobalInitialization$ConfigLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity;->initQuicklyBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

.field private final synthetic val$searchBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$3;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$3;->val$searchBar:Landroid/view/View;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$3;)Lcom/jingdong/app/mall/home/NewHomeActivity;
    .locals 1
    .parameter

    .prologue
    .line 478
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$3;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    return-object v0
.end method


# virtual methods
.method public onLoaded()V
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$3;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    new-instance v1, Lcom/jingdong/app/mall/home/NewHomeActivity$3$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$3;->val$searchBar:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity$3$1;-><init>(Lcom/jingdong/app/mall/home/NewHomeActivity$3;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->post(Ljava/lang/Runnable;)V

    .line 487
    return-void
.end method
