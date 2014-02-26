.class Lcom/jingdong/app/mall/WebActivity$PlayGame$2;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/WebActivity$PlayGame;->endFighter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/WebActivity$PlayGame;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity$PlayGame;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$PlayGame$2;->this$1:Lcom/jingdong/app/mall/WebActivity$PlayGame;

    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$PlayGame$2;->this$1:Lcom/jingdong/app/mall/WebActivity$PlayGame;

    #getter for: Lcom/jingdong/app/mall/WebActivity$PlayGame;->this$0:Lcom/jingdong/app/mall/WebActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity$PlayGame;->access$1(Lcom/jingdong/app/mall/WebActivity$PlayGame;)Lcom/jingdong/app/mall/WebActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/WebActivity;->finish()V

    .line 1000
    return-void
.end method
