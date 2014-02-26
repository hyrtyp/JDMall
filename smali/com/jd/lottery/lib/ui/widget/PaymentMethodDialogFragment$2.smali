.class Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$2;
.super Ljava/lang/Object;
.source "PaymentMethodDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$2;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    iput p2, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$2;->val$index:I

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$2;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    iget v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$2;->val$index:I

    #calls: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->checkRadioButton(I)V
    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$5(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;I)V

    .line 181
    return-void
.end method
