.class Lcom/jingdong/app/mall/personel/PersonelActivity$4$1;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$4;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$4;

.field private final synthetic val$couponCount:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$4;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$4$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$4;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$4$1;->val$couponCount:Ljava/lang/Integer;

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 890
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$4$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$4;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$4;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity$4;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$4;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->couponsTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$40(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$4$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$4;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$4;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/PersonelActivity$4;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$4;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v5

    const v6, 0x7f07028d

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$4$1;->val$couponCount:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$4$1;->val$couponCount:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    .line 892
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\uff08"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$4$1;->val$couponCount:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff09"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 893
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 894
    .local v1, end:I
    const/4 v3, 0x1

    .line 895
    .local v3, start:I
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$4$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$4;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$4;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity$4;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$4;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 896
    .local v0, colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    const/16 v4, 0x21

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 897
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$4$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$4;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$4;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity$4;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$4;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->couponsTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$40(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 899
    .end local v0           #colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    .end local v1           #end:I
    .end local v2           #ssb:Landroid/text/SpannableStringBuilder;
    .end local v3           #start:I
    :cond_0
    return-void
.end method
