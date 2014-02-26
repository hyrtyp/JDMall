.class final Lcom/jingdong/app/mall/WebActivity$BindGiftcard;
.super Ljava/lang/Object;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BindGiftcard"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/WebActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$BindGiftcard;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/WebActivity$BindGiftcard;)Lcom/jingdong/app/mall/WebActivity;
    .locals 1
    .parameter

    .prologue
    .line 842
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$BindGiftcard;->this$0:Lcom/jingdong/app/mall/WebActivity;

    return-object v0
.end method


# virtual methods
.method public onBindFinish(Z)V
    .locals 2
    .parameter "isBindSuccess"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$BindGiftcard;->this$0:Lcom/jingdong/app/mall/WebActivity;

    new-instance v1, Lcom/jingdong/app/mall/WebActivity$BindGiftcard$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/WebActivity$BindGiftcard$1;-><init>(Lcom/jingdong/app/mall/WebActivity$BindGiftcard;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/WebActivity;->post(Ljava/lang/Runnable;)V

    .line 852
    return-void
.end method
