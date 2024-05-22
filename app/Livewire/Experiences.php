<?php

namespace App\Livewire;

use App\Models\Experience;
use App\Models\Page;
use Livewire\Component;
use Carbon\Carbon;
use App\Models\Inquiry;
use Illuminate\Support\Facades\Mail;
use App\Mail\InquiryReceived;

class Experiences extends Component
{
    public $openModalId = null;

    public function openModal($id, $experienceName)
    {
        $this->openModalId = $id;
        $this->experience_name = $experienceName; // Set the experience name when opening the modal
    }

    public function closeModal()
    {
        $this->openModalId = null;
    }

    public $experience_name, $first_name, $last_name, $booking_date, $email, $phone, $comment;

    protected $rules = [
        'experience_name' => 'required|string|max:255',
        'first_name' => 'required|string|max:255',
        'last_name' => 'required|string|max:255',
        'booking_date' => 'required|date|after_or_equal:today',
        'email' => 'required|email|max:255',
        'phone' => 'required|string|max:255',
        'comment' => 'nullable|string|max:500',
    ];

    public function submit()
    {
        $this->validate();

        Inquiry::create([
            'experience_name' => $this->experience_name,
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'booking_date' => Carbon::parse($this->booking_date),
            'email' => $this->email,
            'phone' => $this->phone,
            'comment' => $this->comment,
        ]);

        $mailData = [
            'experience_name' => $this->experience_name,
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'booking_date' => $this->booking_date,
            'email' => $this->email,
            'phone' => $this->phone,
            'comment' => $this->comment,
        ];

        Mail::to('angga@hanginggardensinternational.com')
            ->cc($this->email)
            ->send(new InquiryReceived($mailData));

        return redirect()->to('/thank-you');
    }

    public function render()
    {
        return view('livewire.experiences', [
            'page' => Page::where('status', '1')->where('id', '5')->first(),
            'experiences' => Experience::where('status', '1')->latest()->get(),
        ]);
    }
}
