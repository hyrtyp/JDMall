.class Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$5;
.super Ljava/lang/Object;
.source "LifeAssistantActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->goneProgressBar()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$5;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$5;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mDataLoadProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->access$4(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 216
    return-void
.end method
