.class Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;
.super Ljava/lang/Object;
.source "AmHelperActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 134
    :sswitch_0
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->isCanClickButton:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$0(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    #calls: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->avoidMoreTimeClicked()V
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$1(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)V

    .line 141
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    const-class v2, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "token"

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->token:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$2(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 147
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->finish()V

    goto :goto_0

    .line 150
    :sswitch_2
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->content:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->currentUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$4(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0068 -> :sswitch_1
        0x7f0c0069 -> :sswitch_0
        0x7f0c0070 -> :sswitch_2
    .end sparse-switch
.end method
