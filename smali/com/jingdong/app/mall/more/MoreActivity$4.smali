.class Lcom/jingdong/app/mall/more/MoreActivity$4;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$item:Lcom/jingdong/common/entity/HomeLayout;

.field private final synthetic val$param:Lcom/jingdong/common/utils/URLParamMap;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/MoreActivity;Lcom/jingdong/common/entity/HomeLayout;Lcom/jingdong/common/utils/URLParamMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/MoreActivity$4;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/MoreActivity$4;->val$item:Lcom/jingdong/common/entity/HomeLayout;

    iput-object p3, p0, Lcom/jingdong/app/mall/more/MoreActivity$4;->val$param:Lcom/jingdong/common/utils/URLParamMap;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/MoreActivity$4;)Lcom/jingdong/app/mall/more/MoreActivity;
    .locals 1
    .parameter

    .prologue
    .line 616
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity$4;->this$0:Lcom/jingdong/app/mall/more/MoreActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/jingdong/app/mall/more/MoreActivity$4;->val$item:Lcom/jingdong/common/entity/HomeLayout;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/HomeLayout;->getFunctionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/more/MoreActivity$4;->val$param:Lcom/jingdong/common/utils/URLParamMap;

    new-instance v2, Lcom/jingdong/app/mall/more/MoreActivity$4$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/MoreActivity$4$1;-><init>(Lcom/jingdong/app/mall/more/MoreActivity$4;)V

    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 637
    return-void
.end method
