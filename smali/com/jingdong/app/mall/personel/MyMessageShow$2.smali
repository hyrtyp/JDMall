.class Lcom/jingdong/app/mall/personel/MyMessageShow$2;
.super Ljava/lang/Object;
.source "MyMessageShow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyMessageShow;->initViewContentTypeByConsulting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyMessageShow;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$2;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 231
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$2;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/MessageDetail;->getType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 232
    .local v2, type:I
    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$2;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/MessageDetail;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    new-instance v1, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v1}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 237
    .local v1, paramMap:Lcom/jingdong/common/utils/URLParamMap;
    const-string v3, "to"

    invoke-virtual {v1, v3, v0}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$2;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    invoke-virtual {v3, v4, v0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V

    .line 243
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #paramMap:Lcom/jingdong/common/utils/URLParamMap;
    :cond_1
    return-void
.end method
