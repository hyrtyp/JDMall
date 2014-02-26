.class Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;
.super Ljava/lang/Object;
.source "HomeSharedToPersionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;

.field private final synthetic val$adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private final synthetic val$listener:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$reportText:Landroid/widget/TextView;

.field private final synthetic val$report_list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;Landroid/widget/ListView;Lcom/jingdong/common/utils/MySimpleAdapter;Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;Landroid/widget/TextView;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->this$1:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->val$report_list:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->val$adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    iput-object p4, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->val$listener:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;

    iput-object p5, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->val$reportText:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->val$report_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->val$adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    iget-object v0, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->val$listener:Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;

    invoke-interface {v0}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$OnEndListener;->onEnd()V

    .line 146
    iget-object v0, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->val$reportText:Landroid/widget/TextView;

    new-instance v1, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2$1;-><init>(Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/jingdong/app/mall/HomeSharedToPersionActivity$1$2;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/MainFrameActivity;

    const-string v1, "com.360buy:jdNewsGlobalInitToken"

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->deleteToken(Ljava/lang/String;)V

    .line 158
    return-void
.end method
