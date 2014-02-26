.class Lcom/jingdong/app/mall/shake/ShakeActivity$12;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;->updateShakeTimes(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

.field private final synthetic val$spannableStringBuilder:Landroid/text/SpannableStringBuilder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$12;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$12;->val$spannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$12;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimesTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$55(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$12;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimesTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$55(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$12;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimesTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$55(Lcom/jingdong/app/mall/shake/ShakeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$12;->val$spannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    :cond_0
    return-void
.end method
