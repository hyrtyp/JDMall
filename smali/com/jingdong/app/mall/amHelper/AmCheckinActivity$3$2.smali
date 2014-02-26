.class Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;
.super Ljava/lang/Object;
.source "AmCheckinActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;

.field private final synthetic val$number:Ljava/lang/String;

.field private final synthetic val$subcode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;->this$1:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;->val$subcode:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;->val$number:Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;->val$subcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;->val$subcode:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;->this$1:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->access$0(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;)Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    move-result-object v1

    const-string v2, "\u7b7e\u5230\u6210\u529f"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "\u60a8\u7684\u5165\u573a\u7f16\u53f7\u662f"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;->val$number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;->this$1:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->access$0(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;)Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->token:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->access$4(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->access$5(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    :goto_1
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;->val$number:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$2;->this$1:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->access$0(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;)Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    move-result-object v0

    const v1, 0x7f07055c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
