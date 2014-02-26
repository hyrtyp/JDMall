.class Lcom/jingdong/app/mall/search/CorrectionActivity$2$1$1;
.super Ljava/lang/Object;
.source "CorrectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 144
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CorrectionActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;->this$1:Lcom/jingdong/app/mall/search/CorrectionActivity$2;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;->access$0(Lcom/jingdong/app/mall/search/CorrectionActivity$2$1;)Lcom/jingdong/app/mall/search/CorrectionActivity$2;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/search/CorrectionActivity$2;->this$0:Lcom/jingdong/app/mall/search/CorrectionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/search/CorrectionActivity$2;->access$0(Lcom/jingdong/app/mall/search/CorrectionActivity$2;)Lcom/jingdong/app/mall/search/CorrectionActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/search/CorrectionActivity;->finish()V

    .line 145
    return-void
.end method
