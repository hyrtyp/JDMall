.class Lcom/jingdong/app/mall/more/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/more/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/AboutActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/AboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/AboutActivity$1;->this$0:Lcom/jingdong/app/mall/more/AboutActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 117
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/jingdong/app/mall/more/AboutActivity$1;->this$0:Lcom/jingdong/app/mall/more/AboutActivity;

    const v3, 0x7f07027d

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/more/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/jingdong/app/mall/more/AboutActivity$1;->this$0:Lcom/jingdong/app/mall/more/AboutActivity;

    const v3, 0x7f07027a

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/more/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/jingdong/app/mall/more/AboutActivity$1;->this$0:Lcom/jingdong/app/mall/more/AboutActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/AboutActivity$1;->this$0:Lcom/jingdong/app/mall/more/AboutActivity;

    const v3, 0x7f07027c

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/more/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/AboutActivity;->startActivityNoException(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c071c
        :pswitch_0
    .end packed-switch
.end method
