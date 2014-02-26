.class Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;
.super Ljava/lang/Object;
.source "EasyGoAddrListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->setEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 125
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 126
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    const v6, 0x7f0c01f1

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 127
    .local v2, lin:Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    const v6, 0x7f0c01f2

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 129
    .local v3, lin2:Landroid/widget/LinearLayout;
    const v5, 0x7f030056

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0c0208

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 132
    .local v1, layout:Landroid/widget/RelativeLayout;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 133
    .local v4, shop:Landroid/widget/Button;
    new-instance v5, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1$1;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1$1;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 156
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 157
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    return-void
.end method
