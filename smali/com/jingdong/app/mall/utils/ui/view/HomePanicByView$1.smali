.class Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$1;
.super Ljava/lang/Object;
.source "HomePanicByView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getHeaderView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->isCanClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    #calls: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->gotoPanicBuyList()V
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)V

    goto :goto_0
.end method
