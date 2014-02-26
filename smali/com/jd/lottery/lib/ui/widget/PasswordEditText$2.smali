.class Lcom/jd/lottery/lib/ui/widget/PasswordEditText$2;
.super Ljava/lang/Object;
.source "PasswordEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/PasswordEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/PasswordEditText;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/PasswordEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText$2;->this$0:Lcom/jd/lottery/lib/ui/widget/PasswordEditText;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText$2;->this$0:Lcom/jd/lottery/lib/ui/widget/PasswordEditText;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->access$1(Lcom/jd/lottery/lib/ui/widget/PasswordEditText;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$drawable;->input_box_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 66
    return-void
.end method
