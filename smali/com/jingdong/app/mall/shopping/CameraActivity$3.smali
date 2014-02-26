.class Lcom/jingdong/app/mall/shopping/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CameraActivity;->loadProductPicture(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

.field private final synthetic val$colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;

.field private final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraActivity;Ljava/lang/String;Lcom/jingdong/common/entity/JDColorProductModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->val$colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$3;)Lcom/jingdong/app/mall/shopping/CameraActivity;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x1388

    .line 251
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 252
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 253
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPriority(I)V

    .line 254
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 256
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAttempts(I)V

    .line 257
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setConnectTimeout(I)V

    .line 258
    new-instance v1, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->val$colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/shopping/CameraActivity$3$1;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity$3;Lcom/jingdong/common/entity/JDColorProductModel;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 300
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    invoke-virtual {v1, v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getHttpGroupaAsynPool(I)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 301
    return-void
.end method
