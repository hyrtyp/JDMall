.class Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$22;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$22;

.field private final synthetic val$functionId:Ljava/lang/String;

.field private final synthetic val$tempUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$22;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$22;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;->val$tempUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;->val$functionId:Ljava/lang/String;

    .line 2194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;)Lcom/jingdong/app/mall/personel/PersonelActivity$22;
    .locals 1
    .parameter

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$22;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2197
    new-instance v0, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v0}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 2198
    .local v0, param:Lcom/jingdong/common/utils/URLParamMap;
    const-string v1, "to"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;->val$tempUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2200
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$22;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$22;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$22;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$22;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    const/4 v2, 0x0

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isQuerying:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$55(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 2202
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;->val$functionId:Ljava/lang/String;

    new-instance v2, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;)V

    invoke-static {v1, v0, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 2222
    return-void
.end method
