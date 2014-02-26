.class Lcom/jingdong/app/mall/home/NewHomeActivity$3$1;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity$3;->onLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$3;

.field private final synthetic val$searchBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity$3;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$3$1;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$3$1;->val$searchBar:Landroid/view/View;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 484
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$3$1;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$3;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity$3;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity$3;->access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$3;)Lcom/jingdong/app/mall/home/NewHomeActivity;

    move-result-object v0

    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "paiswitch"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$3$1;->val$searchBar:Landroid/view/View;

    const v3, 0x7f0c011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/home/NewHomeActivity;->paiSwitch(Ljava/lang/String;Landroid/view/View;)Z
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$7(Lcom/jingdong/app/mall/home/NewHomeActivity;Ljava/lang/String;Landroid/view/View;)Z

    .line 485
    return-void
.end method
