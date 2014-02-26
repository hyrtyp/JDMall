.class Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 127
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 128
    iget-object v0, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/FeedbackActivity$2;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;->access$0(Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;)Lcom/jingdong/app/mall/more/FeedbackActivity$2;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->access$0(Lcom/jingdong/app/mall/more/FeedbackActivity$2;)Lcom/jingdong/app/mall/more/FeedbackActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/more/FeedbackActivity;->finish()V

    .line 129
    return-void
.end method
