.class Lcom/jingdong/app/mall/signin/SignActivity$8$1;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity$8;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/signin/SignActivity$8;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$8$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$8;

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$8$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$8;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$8;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity$8;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$8;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->showJingDouView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$30(Lcom/jingdong/app/mall/signin/SignActivity;)V

    .line 696
    return-void
.end method
