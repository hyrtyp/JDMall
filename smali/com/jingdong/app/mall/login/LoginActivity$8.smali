.class Lcom/jingdong/app/mall/login/LoginActivity$8;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$8;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 464
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 477
    :goto_0
    return-void

    .line 466
    :pswitch_0
    if-eqz p2, :cond_0

    .line 467
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$8;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/login/LoginActivity;->bRememberMe:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$10(Lcom/jingdong/app/mall/login/LoginActivity;Z)V

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$8;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/login/LoginActivity;->bRememberMe:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$10(Lcom/jingdong/app/mall/login/LoginActivity;Z)V

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x7f0c02fc
        :pswitch_0
    .end packed-switch
.end method
