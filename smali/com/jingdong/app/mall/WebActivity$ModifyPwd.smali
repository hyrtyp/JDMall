.class final Lcom/jingdong/app/mall/WebActivity$ModifyPwd;
.super Ljava/lang/Object;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ModifyPwd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/WebActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$ModifyPwd;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/WebActivity$ModifyPwd;)Lcom/jingdong/app/mall/WebActivity;
    .locals 1
    .parameter

    .prologue
    .line 861
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$ModifyPwd;->this$0:Lcom/jingdong/app/mall/WebActivity;

    return-object v0
.end method


# virtual methods
.method public onClearLoginInfo()V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$ModifyPwd;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-static {v0}, Lcom/jingdong/common/utils/UserUtil;->onLogout(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 900
    return-void
.end method

.method public onModifyPwd(Z)V
    .locals 2
    .parameter "isModifySuccess"

    .prologue
    .line 907
    if-eqz p1, :cond_0

    .line 909
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$ModifyPwd;->this$0:Lcom/jingdong/app/mall/WebActivity;

    new-instance v1, Lcom/jingdong/app/mall/WebActivity$ModifyPwd$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/WebActivity$ModifyPwd$1;-><init>(Lcom/jingdong/app/mall/WebActivity$ModifyPwd;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/WebActivity;->post(Ljava/lang/Runnable;)V

    .line 955
    :cond_0
    return-void
.end method
