.class Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;
.super Ljava/lang/Object;
.source "MyWebMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyWebMessage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$1;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$1;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyWebMessage$1;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$1;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v1

    const v2, 0x7f0300a4

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MyWebMessage;->setContentView(I)V

    .line 118
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$1;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyWebMessage$1;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$1;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v1

    const v2, 0x7f0c007e

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MyWebMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    .local v0, mTitleView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$1;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyWebMessage$1;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$1;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->it:Landroid/content/Intent;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$1;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyWebMessage$1;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$1;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v2

    const v3, 0x7f070489

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/MyWebMessage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/EditTextUtils;->setTextViewText(Landroid/widget/TextView;Landroid/content/Intent;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$1;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyWebMessage$1;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$1;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->InitComponenet()V
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$1(Lcom/jingdong/app/mall/personel/MyWebMessage;)V

    .line 123
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$1;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyWebMessage$1;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$1;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$2(Lcom/jingdong/app/mall/personel/MyWebMessage;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$1;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyWebMessage$1;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$1;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$3(Lcom/jingdong/app/mall/personel/MyWebMessage;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$1;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyWebMessage$1;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$1;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->setMyMessage()V
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$4(Lcom/jingdong/app/mall/personel/MyWebMessage;)V

    .line 125
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$1$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$1;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyWebMessage$1;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$1;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/jingdong/app/mall/personel/MyWebMessage;->runnable:Ljava/lang/Runnable;

    .line 126
    return-void
.end method
