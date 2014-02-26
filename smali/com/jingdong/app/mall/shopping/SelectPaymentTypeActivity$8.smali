.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$8;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$IDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selectChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

.field private final synthetic val$keys:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$8;->val$keys:[Ljava/lang/String;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$8;->val$keys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$22(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)V

    .line 515
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selfTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$23(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$8;->val$keys:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    return-void
.end method
