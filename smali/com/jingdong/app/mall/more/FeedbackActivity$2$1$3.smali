.class Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$3;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$3;->this$2:Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 154
    return-void
.end method
