.class Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 1
    .parameter

    .prologue
    .line 2064
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2068
    const/4 v0, 0x1

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 2069
    const/4 v0, 0x2

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 3
    .parameter "button"

    .prologue
    .line 2089
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->cancel()V

    .line 2090
    const/4 v0, 0x1

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mMode:I

    .line 2091
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2092
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2093
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .parameter "button"

    .prologue
    .line 2096
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->cancel()V

    .line 2097
    const/4 v0, 0x2

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mMode:I

    .line 2098
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2099
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2100
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2075
    iput v4, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mMode:I

    .line 2076
    iput v4, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2077
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2078
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$5(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2079
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #setter for: Lnet/simonvt/numberpicker/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lnet/simonvt/numberpicker/NumberPicker;->access$6(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 2080
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$7(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    .line 2082
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #setter for: Lnet/simonvt/numberpicker/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lnet/simonvt/numberpicker/NumberPicker;->access$8(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 2083
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$9(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2084
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->access$10(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    .line 2086
    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2104
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2138
    :goto_0
    return-void

    .line 2106
    :pswitch_0
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2108
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #setter for: Lnet/simonvt/numberpicker/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$6(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 2109
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$7(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2112
    :pswitch_2
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #setter for: Lnet/simonvt/numberpicker/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$8(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 2113
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->access$10(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2118
    :pswitch_3
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2120
    :pswitch_4
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$5(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2121
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2122
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    .line 2121
    invoke-virtual {v0, p0, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2124
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$5(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    #setter for: Lnet/simonvt/numberpicker/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$6(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 2125
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$7(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2128
    :pswitch_5
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$9(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2129
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2130
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    .line 2129
    invoke-virtual {v0, p0, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2132
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$9(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    #setter for: Lnet/simonvt/numberpicker/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$8(Lnet/simonvt/numberpicker/NumberPicker;Z)V

    .line 2133
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    #getter for: Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lnet/simonvt/numberpicker/NumberPicker;->access$10(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    goto/16 :goto_0

    .line 2104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2106
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2118
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
