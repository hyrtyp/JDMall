.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;

.field private final synthetic val$action:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;->val$action:Ljava/lang/String;

    .line 5555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;
    .locals 1
    .parameter

    .prologue
    .line 5555
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 5563
    new-instance v0, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v0}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 5564
    .local v0, params:Lcom/jingdong/common/utils/URLParamMap;
    const-string v1, "to"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5565
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;->val$action:Ljava/lang/String;

    new-instance v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;)V

    invoke-static {v1, v0, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 5580
    return-void
.end method
