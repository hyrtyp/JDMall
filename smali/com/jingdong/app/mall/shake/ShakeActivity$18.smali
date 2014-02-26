.class Lcom/jingdong/app/mall/shake/ShakeActivity$18;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;->showCustomDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

.field private final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$18;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$18;->val$alertDialog:Landroid/app/AlertDialog;

    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1320
    packed-switch p2, :pswitch_data_0

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1322
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$18;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1323
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$18;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->shakeMoreTimesDialog:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$59(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V

    .line 1325
    sget-object v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    if-eqz v0, :cond_0

    .line 1326
    sget-object v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->finish()V

    .line 1327
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->instance:Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    goto :goto_0

    .line 1320
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
