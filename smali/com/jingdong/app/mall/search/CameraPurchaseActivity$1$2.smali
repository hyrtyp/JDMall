.class Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;
.super Ljava/lang/Object;
.source "CameraPurchaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;

.field private final synthetic val$adapter:Lcom/jingdong/common/utils/MySimpleAdapter;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;Lcom/jingdong/common/utils/MySimpleAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->this$1:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->val$adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;)Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->this$1:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->this$1:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;)Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->tagText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$2(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0703e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->this$1:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;)Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$3(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->val$adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->this$1:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;)Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$3(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2$1;-><init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    return-void
.end method
