.class Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;
.super Ljava/lang/Object;
.source "MyAccountSecurityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->setEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;)Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/BackExchange;

    .line 136
    .local v0, item:Lcom/jingdong/common/entity/BackExchange;
    new-instance v1, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v1}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 137
    .local v1, param:Lcom/jingdong/common/utils/URLParamMap;
    const-string v2, "to"

    invoke-virtual {v0}, Lcom/jingdong/common/entity/BackExchange;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    invoke-virtual {v0}, Lcom/jingdong/common/entity/BackExchange;->getAction()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2$1;-><init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;)V

    invoke-static {v2, v1, v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 154
    return-void
.end method
