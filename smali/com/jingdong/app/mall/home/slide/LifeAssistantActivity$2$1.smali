.class Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2$1;
.super Ljava/lang/Object;
.source "LifeAssistantActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;

.field private final synthetic val$data:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2$1;->val$data:Ljava/util/List;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;->access$0(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;)Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2$1;->val$data:Ljava/util/List;

    #calls: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->getAllInfoList(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->access$3(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;Ljava/util/List;)V

    .line 119
    return-void
.end method
