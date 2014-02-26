.class Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$1;
.super Ljava/lang/Object;
.source "LifeAssistantActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$1;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$1;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->msAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->access$0(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$1;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->msAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->access$0(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 73
    :cond_0
    return-void
.end method
