.class Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$8;
.super Ljava/lang/Object;
.source "OptionalPanelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->showPopupWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

.field private final synthetic val$popup:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$8;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    iput-object p2, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$8;->val$popup:Landroid/widget/PopupWindow;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    .line 344
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$8;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    #getter for: Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->yaoyiyaorandomBallsTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->access$7(Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;)Landroid/widget/TextView;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$8;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 346
    sget v2, Lcom/jd/lottery/lib/R$string;->shake_random_select_num:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 345
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$8;->this$0:Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 348
    const-string v1, "shake_random_num_ssq"

    .line 347
    invoke-static {v0, v1, v6}, Lcom/jd/lottery/lib/utils/PreferenceUtil;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 349
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/OptionalPanelFragment$8;->val$popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 350
    return-void
.end method
