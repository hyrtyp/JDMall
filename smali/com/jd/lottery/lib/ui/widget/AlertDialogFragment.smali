.class public Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;
    }
.end annotation


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field actionClickListener:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;

.field private addToLotteryBasketTextView:Landroid/widget/TextView;

.field private cancleTextView:Landroid/widget/TextView;

.field private message:Ljava/lang/String;

.field private messageTextView:Landroid/widget/TextView;

.field private title:Ljava/lang/String;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 33
    new-instance v1, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;

    invoke-direct {v1}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;-><init>()V

    .line 35
    .local v1, ssqRandomListDialogFragment:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->title:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->message:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 58
    sget v1, Lcom/jd/lottery/lib/R$layout;->fragmentdialog_alert:I

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 61
    .local v0, layout:Landroid/widget/LinearLayout;
    sget v1, Lcom/jd/lottery/lib/R$id;->fragment_alert_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->titleTextView:Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    sget v1, Lcom/jd/lottery/lib/R$id;->fragment_alert_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->messageTextView:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->messageTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    sget v1, Lcom/jd/lottery/lib/R$id;->fragment_alert_dialog_cancle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->cancleTextView:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->cancleTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$1;-><init>(Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v1, Lcom/jd/lottery/lib/R$id;->fragment_alert_dialog_ok:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->addToLotteryBasketTextView:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->addToLotteryBasketTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$2;-><init>(Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-object v0
.end method

.method public setOnActionClickListener(Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment;->actionClickListener:Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;

    .line 98
    return-void
.end method
